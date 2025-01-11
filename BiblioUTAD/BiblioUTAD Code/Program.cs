using BiblioUTAD.Data;
using BiblioUTAD.Services;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.UI.Services;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);

// Adiciona a string de conexão com o banco de dados
var connectionString = builder.Configuration.GetConnectionString("DefaultConnection")
                       ?? throw new InvalidOperationException("Connection string 'DefaultConnection' not found.");

builder.Services.AddDbContext<ApplicationDbContext>(options =>
    options.UseSqlServer(connectionString));

// Configuração da identidade
builder.Services.AddIdentity<IdentityUser, IdentityRole>(options =>
{
    // Configurações da palavra-passe
    options.Password.RequireDigit = false;            // Não exige números
    options.Password.RequiredLength = 1;             // Comprimento mínimo de 1 caractere
    options.Password.RequireNonAlphanumeric = false; // Não exige caracteres especiais
    options.Password.RequireUppercase = false;       // Não exige letras maiúsculas
    options.Password.RequireLowercase = false;       // Não exige letras minúsculas

    // Configurações de username
    options.User.AllowedUserNameCharacters =
        "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-._@+´éíáóçâêôãõ ";

    // Configuração de confirmação de e-mail
    options.SignIn.RequireConfirmedEmail = true;

})
.AddEntityFrameworkStores<ApplicationDbContext>()
.AddDefaultTokenProviders(); // Necessário para geração de tokens (ex.: confirmação de e-mail)

// Registro do serviço de envio de e-mails
builder.Services.AddTransient<IEmailSender, EmailSender>();
builder.Services.AddScoped<NotificacaoService>();
builder.Services.AddHostedService<EmprestimoCheckService>();

// Configurações de cookies de autenticação
builder.Services.ConfigureApplicationCookie(options =>
{
    options.LoginPath = "/Identity/Account/Login";
    options.LogoutPath = "/Identity/Account/Logout";
    options.AccessDeniedPath = "/Home/AccessDenied";
});

// Adicionando serviços para controladores e Razor Pages
builder.Services.AddControllersWithViews();
builder.Services.AddRazorPages();

var app = builder.Build();

// Criar papéis no sistema ao iniciar o aplicativo
using (var scope = app.Services.CreateScope())
{
    var roleManager = scope.ServiceProvider.GetRequiredService<RoleManager<IdentityRole>>();
    var userManager = scope.ServiceProvider.GetRequiredService<UserManager<IdentityUser>>();

    // Lista de papéis a serem criados
    string[] roles = { "Leitor", "Bibliotecario", "Administrador" };

    foreach (var role in roles)
    {
        if (!await roleManager.RoleExistsAsync(role))
        {
            await roleManager.CreateAsync(new IdentityRole(role));
        }
    }

    // Criação de um administrador padrão, caso não exista
    string adminEmail = "admin@biblioutad.com";
    string adminPassword = "123";
    var adminUser = await userManager.FindByEmailAsync(adminEmail);

    if (adminUser == null)
    {
        adminUser = new IdentityUser
        {
            UserName = "admin",
            Email = adminEmail,
            EmailConfirmed = true
        };
        var createAdmin = await userManager.CreateAsync(adminUser, adminPassword);

        if (createAdmin.Succeeded)
        {
            await userManager.AddToRoleAsync(adminUser, "Administrador");
        }
    }
}

// Configure o pipeline de requisições HTTP
if (app.Environment.IsDevelopment()) { }
else
{
    app.UseExceptionHandler("/Home/Error");
    app.UseHsts(); // Configuração de segurança HSTS para produção
}

app.UseHttpsRedirection();
app.UseStaticFiles();
app.UseRouting();
app.UseAuthentication();
app.UseAuthorization();

// Mapeamento de rotas
app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Catalogo}/{id?}");

app.MapControllerRoute(
    name: "adminCatalogo",
    pattern: "Admin/Catalogo/{action=Index}/{id?}",
    defaults: new { controller = "AdminCatalogo" });

app.MapControllerRoute(
    name: "bibliotecarioCatalogo",
    pattern: "Bibliotecario/Catalogo/{action=Index}/{id?}",
    defaults: new { controller = "AdminCatalogo" });

app.MapRazorPages();

app.Run();