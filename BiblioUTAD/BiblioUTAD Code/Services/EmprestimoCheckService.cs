using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Threading;
using System.Threading.Tasks;
using BiblioUTAD.Data;

public class EmprestimoCheckService : BackgroundService
{
    private readonly IServiceProvider _serviceProvider;

    public EmprestimoCheckService(IServiceProvider serviceProvider)
    {
        _serviceProvider = serviceProvider;
    }

    protected override async Task ExecuteAsync(CancellationToken stoppingToken)
    {
        while (!stoppingToken.IsCancellationRequested)
        {
            using (var scope = _serviceProvider.CreateScope())
            {
                var notificacaoService = scope.ServiceProvider.GetRequiredService<NotificacaoService>();

                await notificacaoService.VerificarEmprestimosAtrasados();
            }

            // Executa a verificação a cada 24 horas
            await Task.Delay(TimeSpan.FromHours(24), stoppingToken);
        }
    }
}