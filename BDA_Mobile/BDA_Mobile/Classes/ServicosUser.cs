using BDA_Mobile;
using BDA_Mobile.Classes;
using Firebase.Database;
using Firebase.Database.Query;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;

namespace BDA_Mobile.Classes
{
	public class ServicosUser
	{
		public static string SenhaFirebase = "iI4n3rABnwSVkroDtEERgT4Gj6memKbKi4nLSRPn";
		FirebaseClient Cliente = new FirebaseClient("https://bda-mobile-default-rtdb.firebaseio.com/", new FirebaseOptions { AuthTokenAsyncFactory = () => Task.FromResult(SenhaFirebase) });
		public async Task<bool> RegistrarUsuario(string user, string senha)
		{
			try
			{
				await Cliente.Child("Usuarios")
						.PostAsync(new Usuarios()
						{
							usuario = user,
							senha = senha
						});
				return true;

			}
			catch
			{
				return false;
			}

		}


		public async Task<bool> VerificarLogin(string login, string loginsenha)
		{
			var consultar = (await Cliente.Child("Usuarios")
				.OnceAsync<Usuarios>())
		.Where(u => u.Object.usuario == login)
		.Where(u => u.Object.senha == loginsenha)
		.FirstOrDefault();
			return consultar != null;

		}

		public async Task<Usuarios> GetUserByLogin(string login)
		{
			var consultar = (await Cliente.Child("Usuarios")
				.OnceAsync<Usuarios>())
		.Where(u => u.Object.usuario == login)
		.FirstOrDefault();
			return consultar.Object;
		}

		public async Task<bool> VerificarEmail(string email)
		{
			var consultar = (await Cliente.Child("Usuarios")
				.OnceAsync<Usuarios>())
		.Where(u => u.Object.usuario == email)
		.FirstOrDefault();
			return consultar != null;
		}

		public async Task<bool> AtualizarResetCode(string usuario, int resetCode)
		{
			try
			{
				// Consulta o usuário pelo nome de usuário (campo "usuario")
				var usuarioQuery = (await Cliente.Child("Usuarios")
												.OnceAsync<Usuarios>())
												.FirstOrDefault(u => u.Object.usuario == usuario);

				// Se não encontrar nenhum usuário com esse nome, retorna falso
				if (usuarioQuery == null)
				{
					return false;
				}

				// Atualiza o campo "resetCode" do primeiro usuário encontrado na consulta
				var usuarioKey = usuarioQuery.Key;
				await Cliente.Child("Usuarios")
							 .Child(usuarioKey)
							 .Child("resetCode")
							 .PutAsync(resetCode);

				return true;
			}
			catch (Exception ex)
			{
				// Trata a exceção aqui, se necessário
				return false;
			}
		}

		public async Task<bool> AtualizarSenha(string usuario, string senha)
		{
			try
			{
				// Consulta o usuário pelo nome de usuário (campo "usuario")
				var usuarioQuery = (await Cliente.Child("Usuarios")
												.OnceAsync<Usuarios>())
												.FirstOrDefault(u => u.Object.usuario == usuario);

				// Se não encontrar nenhum usuário com esse nome, retorna falso
				if (usuarioQuery == null)
				{
					return false;
				}

				// Atualiza o campo "senha" do primeiro usuário encontrado na consulta
				var usuarioKey = usuarioQuery.Key;
				var updateObject = new { senha };
				await Cliente.Child("Usuarios")
							 .Child(usuarioKey)
							 .PatchAsync(updateObject);

				return true;
			}
			catch (Exception ex)
			{
				// Trata a exceção aqui, se necessário
				return false;
			}
		}




	}

}
