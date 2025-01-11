using BiblioUTAD.Data;
using BiblioUTAD.Services;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.UI.Services;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);

// Adiciona a string de conex�o com o banco de dados
var connectionString = builder.Configuration.GetConnectionString("DefaultConnection")
                       ?? throw new InvalidOperationException("Connection string 'DefaultConnection' not found.");

builder.Services.AddDbContext<ApplicationDbContext>(options =>
    options.UseSqlServer(connectionString));

// Configura��o da identidade
builder.Services.AddIdentity<IdentityUser, IdentityRole>(options =>
{
    // Configura��es da palavra-passe
    options.Password.RequireDigit = false;            // N�o exige n�meros
    options.Password.RequiredLength = 1;             // Comprimento m�nimo de 1 caractere
    options.Password.RequireNonAlphanumeric = false; // N�o exige caracteres especiais
    options.Password.RequireUppercase = false;       // N�o exige letras mai�sculas
    options.Password.RequireLowercase = false;       // N�o exige letras min�sculas

    // Configura��es de username
    options.User.AllowedUserNameCharacters =
        "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-._@+����������� ";

    // Configura��o de confirma��o de e-mail
    options.SignIn.RequireConfirmedEmail = true;

})
.AddEntityFrameworkStores<ApplicationDbContext>()
.AddDefaultTokenProviders(); // Necess�rio para gera��o de tokens (ex.: confirma��o de e-mail)

// Registro do servi�o de envio de e-mails
builder.Services.AddTransient<IEmailSender, EmailSender>();
builder.Services.AddScoped<NotificacaoService>();
builder.Services.AddHostedService<EmprestimoCheckService>();

// Configura��es de cookies de autentica��o
builder.Services.ConfigureApplicationCookie(options =>
{
    options.LoginPath = "/Identity/Account/Login";
    options.LogoutPath = "/Identity/Account/Logout";
    options.AccessDeniedPath = "/Home/AccessDenied";
});

// Adicionando servi�os para controladores e Razor Pages
builder.Services.AddControllersWithViews();
builder.Services.AddRazorPages();

var app = builder.Build();

// Criar pap�is no sistema ao iniciar o aplicativo
using (var scope = app.Services.CreateScope())
{
    var roleManager = scope.ServiceProvider.GetRequiredService<RoleManager<IdentityRole>>();
    var userManager = scope.ServiceProvider.GetRequiredService<UserManager<IdentityUser>>();

    // Lista de pap�is a serem criados
    string[] roles = { "Leitor", "Bibliotecario", "Administrador" };

    foreach (var role in roles)
    {
        if (!await roleManager.RoleExistsAsync(role))
        {
            await roleManager.CreateAsync(new IdentityRole(role));
        }
    }

    // Cria��o de um administrador padr�o, caso n�o exista
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

// Configure o pipeline de requisi��es HTTP
if (app.Environment.IsDevelopment()) { }
else
{
    app.UseExceptionHandler("/Home/Error");
    app.UseHsts(); // Configura��o de seguran�a HSTS para produ��o
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