using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using WebAPI.Domain.Cliente.Entities;
using WebAPI.Domain.Cliente.Interfaces;
using System.Data;
using Microsoft.Extensions.Configuration;

namespace WebAPI.Repository.Cliente
{
    public class ClienteRepository : IClienteRepository
    {
        public IConfiguration Configuration;
        //private readonly string SqlConnectionString = "Server=DESKTOP-HL9BLID;Database=Empresa;User Id=sa;Password=sa;";
        private string SqlConnectionString;

        public ClienteRepository(IConfiguration configuration)
        {
            Configuration = configuration;
            SqlConnectionString = Configuration.GetSection("ConnectionStrings")["SqlConnectionString"];
        }

        public int Delete(int id)
        {
            int retorno = 0;

            using (SqlConnection conn = new SqlConnection(SqlConnectionString))
            {
                try
                {
                    conn.Open();

                    using (SqlCommand comm = conn.CreateCommand())
                    {
                        comm.CommandType = CommandType.Text;
                        comm.CommandText = " DELETE FROM CLIENTE WHERE ID = @ID";

                        comm.Parameters.Add(new SqlParameter("ID", id));

                        retorno = comm.ExecuteNonQuery();
                    }

                    return retorno;
                }
                catch (Exception ex)
                {
                    throw new Exception($"{ex.Message} - {ex.StackTrace}");
                }
                finally
                {
                    conn.Close();
                }
            }
        }

        public ClienteDomain Get(int id)
        {
            ClienteDomain retorno = null;

            using (SqlConnection conn = new SqlConnection(SqlConnectionString))
            {
                try
                {
                    conn.Open();

                    using (SqlCommand comm = conn.CreateCommand())
                    {
                        comm.CommandType = CommandType.Text;
                        comm.CommandText = " SELECT * FROM CLIENTE WHERE ID = @ID ";

                        comm.Parameters.Add(new SqlParameter("@ID", id));

                        using (SqlDataReader reader = comm.ExecuteReader())
                        {
                            if (reader.HasRows)
                            {
                                reader.Read();

                                retorno = new ClienteDomain();

                                retorno.Id = int.Parse(reader["Id"].ToString());
                                retorno.Nome = reader["Nome"].ToString();
                                retorno.Idade = short.Parse(reader["Idade"].ToString());
                                retorno.Email = reader["Email"].ToString();
                                retorno.DataNascimento = DateTime.Parse(reader["DataNascimento"].ToString());
                            }
                        }
                    }

                    return retorno;
                }
                catch (Exception ex)
                {
                    throw new Exception($"{ex.Message} - {ex.StackTrace}");
                }
                finally
                {
                    conn.Close();
                }
            }
        }

        public IEnumerable<ClienteDomain> GetAll(ClienteArgs args)
        {
            List<ClienteDomain> retorno = new List<ClienteDomain>();

            using (SqlConnection conn = new SqlConnection(SqlConnectionString))
            {
                try
                {
                    conn.Open();

                    using (SqlCommand comm = conn.CreateCommand())
                    {
                        comm.CommandType = CommandType.Text;
                        comm.CommandText = " SELECT * FROM CLIENTE WHERE ID > 0 ";

                        if (args.Id > 0)
                        {
                            comm.CommandText += " AND ID = @ID ";
                            comm.Parameters.Add(new SqlParameter("@ID", args.Id));
                        }

                        if (!string.IsNullOrEmpty(args.Nome))
                        {
                            comm.CommandText += " AND NOME = @NOME ";
                            comm.Parameters.Add(new SqlParameter("@NOME", args.Nome));
                        }

                        using (SqlDataReader reader = comm.ExecuteReader())
                        {
                            if (reader.HasRows)
                            {
                                while (reader.Read())
                                {
                                    var cliente = new ClienteDomain();

                                    cliente.Id = int.Parse(reader["ID"].ToString());
                                    cliente.Nome = reader["NOME"].ToString();
                                    cliente.Idade = short.Parse(reader["IDADE"].ToString());
                                    cliente.Email = reader["EMAIL"].ToString();
                                    cliente.DataNascimento = DateTime.Parse(reader["DATANASCIMENTO"].ToString());

                                    retorno.Add(cliente);
                                }
                            }
                        }
                    }

                    return retorno;
                }
                catch (Exception ex)
                {
                    throw new Exception($"{ex.Message} - {ex.StackTrace}");
                }
                finally
                {
                    conn.Close();
                }
            }
        }

        public int Insert(ClienteDomain model)
        {
            int retorno = 0;

            using (SqlConnection conn = new SqlConnection(SqlConnectionString))
            {
                try
                {
                    conn.Open();

                    using (SqlCommand comm = conn.CreateCommand())
                    {
                        comm.CommandType = CommandType.Text;
                        comm.CommandText = " INSERT INTO CLIENTE (NOME,IDADE,EMAIL,DATANASCIMENTO) VALUES(@NOME,@IDADE,@EMAIL,@DATANASCIMENTO) SELECT @@IDENTITY ";

                        comm.Parameters.Add(new SqlParameter("@NOME", model.Nome));
                        comm.Parameters.Add(new SqlParameter("@IDADE", model.Idade));
                        comm.Parameters.Add(new SqlParameter("@EMAIL", model.Email));
                        comm.Parameters.Add(new SqlParameter("@DATANASCIMENTO", model.DataNascimento));

                        retorno = comm.ExecuteNonQuery();
                    }

                    return retorno;
                }
                catch (Exception ex)
                {
                    throw new Exception($"{ex.Message} - {ex.StackTrace}");
                }
                finally
                {
                    conn.Close();
                }
            }
        }

        public int Update(ClienteDomain model)
        {
            int retorno = 0;

            using (SqlConnection conn = new SqlConnection(SqlConnectionString))
            {
                try
                {
                    conn.Open();

                    using (SqlCommand comm = conn.CreateCommand())
                    {
                        comm.CommandType = CommandType.Text;
                        comm.CommandText = " UPDATE CLIENTE SET NOME=@NOME,IDADE=@IDADE,EMAIL=@EMAIL,DATANASCIMENTO=@DATANASCIMENTO WHERE ID = @ID";

                        comm.Parameters.Add(new SqlParameter("ID", model.Id));
                        comm.Parameters.Add(new SqlParameter("@NOME", model.Nome));
                        comm.Parameters.Add(new SqlParameter("@IDADE", model.Idade));
                        comm.Parameters.Add(new SqlParameter("@EMAIL", model.Email));
                        comm.Parameters.Add(new SqlParameter("@DATANASCIMENTO", model.DataNascimento));

                        retorno = comm.ExecuteNonQuery();
                    }

                    return retorno;
                }
                catch (Exception ex)
                {
                    throw new Exception($"{ex.Message} - {ex.StackTrace}");
                }
                finally
                {
                    conn.Close();
                }
            }
        }
    }
}
