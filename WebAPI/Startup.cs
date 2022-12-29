using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.VisualStudio.Web.CodeGeneration.Contracts.Messaging;
using System;
using System.Collections.Generic;
using System.Threading;
using Telegram.Bot;
using Telegram.Bot.Args;
using Telegram.Bot.Types;
using WebAPI.Domain.Cliente.Entities;
using WebAPI.Domain.Cliente.Interfaces;
using WebAPI.Domain.Interfaces;
using WebAPI.Domain.Mensagem.Entities;
using WebAPI.Domain.Pergunta.Entities;
using WebAPI.Repository.Cliente;
using WebAPI.Service.Cliente;

namespace WebAPI
{
    public class Startup
    {
        //private static string token = "1610285695:AAHie7FGNEL9hqYOArwWyDGAnQ4n1a5lLWw";
        //private static TelegramBotClient botClient = new TelegramBotClient(token);

        //private static PerguntaDomain perguntaX = new PerguntaDomain();
        //private static bool aguardandoResposta = false;


        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddMvc().SetCompatibilityVersion(CompatibilityVersion.Version_2_2);

            services.AddTransient<IClienteService, ClienteService>();
            services.AddTransient<IClienteRepository, ClienteRepository>();

            services.AddTransient<IServiceBase<ClienteDomain, ClienteArgs>, ClienteService>();

            //StartTelegramBot();
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IHostingEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            else
            {
                // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
                app.UseHsts();
            }

            app.UseHttpsRedirection();
            app.UseMvc();
        }

        //public void StartTelegramBot()
        //{
        //    botClient.OnMessage += BotClient_OnMessage;

        //    botClient.StartReceiving();
        //    Thread.Sleep(Timeout.Infinite);
        //    botClient.StopReceiving();
        //}

        //static async void BotClient_OnMessage(object sender, MessageEventArgs e)
        //{
        //    try
        //    {
        //        long idUsuario = e.Message.Chat.Id;

        //        if (e.Message.Text.ToUpper() == "/START")
        //        {
        //            string msg = $"Bem vindo {e.Message.Chat.FirstName}, para iniciar o teste basta dizer /perguntas. As perguntar são geradas de forma aleatória e sempre que acertar a resposta será adicionado um ponto ao seu score.";
        //            await botClient.SendTextMessageAsync(idUsuario, msg);
        //        }
        //        else if (e.Message.Text.ToUpper() == "/PERGUNTAS")
        //        {
        //            aguardandoResposta = true;

        //            string pergunta = $"Quanto é 1 + 1? \n\n Alternativas: \n A) 3 \n B) 4 \n C) 9 \n D) 2";
        //            string resposta = "D";

        //            perguntaX.pergunta = pergunta;
        //            perguntaX.resposta = resposta;

        //            await botClient.SendTextMessageAsync(idUsuario, pergunta);
        //        }
        //        else if (aguardandoResposta == true)
        //        {
        //            string retorno = "";

        //            if (e.Message.Text.ToUpper() == perguntaX.resposta)
        //            {
        //                retorno = "Parabéns, resposta correta!";
        //            }
        //            else
        //            {
        //                retorno = "Resposta incorreta!";
        //            }

        //            aguardandoResposta = false;
        //            perguntaX = new PerguntaDomain();

        //            await botClient.SendTextMessageAsync(idUsuario, retorno);
        //        }
        //        else
        //        {
        //            await botClient.SendTextMessageAsync(idUsuario, "Desculpe, não entendi!");
        //        }
                
        //    }
        //    catch (Exception ex)
        //    {
        //        Console.WriteLine(ex);
        //    }
        //}
    }
}
