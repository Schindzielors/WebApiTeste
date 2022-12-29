using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using Microsoft.AspNetCore;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;
using Telegram.Bot;
using Telegram.Bot.Args;
using WebAPI.Domain.Pergunta.Entities;

namespace WebAPI
{
    public class Program
    {
        private static string token = "1610285695:AAHie7FGNEL9hqYOArwWyDGAnQ4n1a5lLWw";
        private static TelegramBotClient botClient = new TelegramBotClient(token);

        private static PerguntaDomain perguntaX = new PerguntaDomain();
        private static bool aguardandoResposta = false;

        public static void Main(string[] args)
        {
            StartTelegramBot();
            CreateWebHostBuilder(args).Build().Run();
        }

        public static IWebHostBuilder CreateWebHostBuilder(string[] args) =>
            WebHost.CreateDefaultBuilder(args)
                .UseStartup<Startup>();

        public static void StartTelegramBot()
        {
            botClient.OnMessage += BotClient_OnMessage;

            botClient.StartReceiving();
            Thread.Sleep(Timeout.Infinite);
            botClient.StopReceiving();
        }

        static async void BotClient_OnMessage(object sender, MessageEventArgs e)
        {
            try
            {
                long idUsuario = e.Message.Chat.Id;

                if (e.Message.Text.ToUpper() == "/START")
                {
                    string msg = $"Bem vindo {e.Message.Chat.FirstName}, para iniciar o teste basta dizer /perguntas. As perguntar são geradas de forma aleatória e sempre que acertar a resposta será adicionado um ponto ao seu score.";
                    await botClient.SendTextMessageAsync(idUsuario, msg);
                }
                else if (e.Message.Text.ToUpper() == "/PERGUNTAS")
                {
                    aguardandoResposta = true;

                    string pergunta = $"Quanto é 1 + 1? \n\n Alternativas: \n A) 3 \n B) 4 \n C) 9 \n D) 2";
                    string resposta = "D";

                    perguntaX.pergunta = pergunta;
                    perguntaX.resposta = resposta;

                    await botClient.SendTextMessageAsync(idUsuario, pergunta);
                }
                else if (aguardandoResposta == true)
                {
                    string retorno = "";

                    if (e.Message.Text.ToUpper() == perguntaX.resposta)
                    {
                        retorno = "Parabéns, resposta correta!";
                    }
                    else
                    {
                        retorno = "Resposta incorreta!";
                    }

                    aguardandoResposta = false;
                    perguntaX = new PerguntaDomain();

                    await botClient.SendTextMessageAsync(idUsuario, retorno);
                }
                else
                {
                    await botClient.SendTextMessageAsync(idUsuario, "Desculpe, não entendi!");
                }

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
            }
        }
    }
}
