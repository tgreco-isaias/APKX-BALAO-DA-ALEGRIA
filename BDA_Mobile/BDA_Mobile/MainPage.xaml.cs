using BDA_Mobile.Classes;
using FFImageLoading.Forms;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace BDA_Mobile
{
	public partial class MainPage : ContentPage
	{
		private bool _isLoading;
		public bool IsLoading
		{
			get { return _isLoading; }
			set
			{
				_isLoading = value;
				OnPropertyChanged(nameof(IsLoading));
			}
		}

		public MainPage()
		{
			InitializeComponent();
			BindingContext = this;

			NavigationPage.SetHasNavigationBar(this, false);
		}

		private async void DisplayBDA_Mobile(string title, string message, string button)
		{
			await DisplayAlert(title, message, button);
		}

		private void Button_clicked(object sender, EventArgs e)
		{
			DisplayBDA_Mobile("Atenção", "Executando Sistema BDA", "Ok");
		}

		//private Entry GetTXTEmail()
		//{
		//	//return TXTEmail;
		//}

		private async void BTNLogar_Clicked(object sender, EventArgs e)
		{
			try
			{
				IsLoading = true;

				//TelaCarregamento();

				//Entry tXTEmail;
				var logar = new ServicosUser();
				bool verificarlogin = await logar.VerificarLogin(TXTEmail.Text, TXTSenha.Text);

				if (verificarlogin)

				{
					await DisplayAlert("Sucesso", "Usuário logado", "Ok");
					_ = Navigation.PushAsync(new Relatorio());

					//TelaCarregamento();
				}
				else

				{
					await DisplayAlert("Falha", "Usuário e senha não correspondem", "Ok");

					//TelaCarregamento();
				}
			}

			catch (Exception ex)
			{
				await DisplayAlert("Falha", "Erro ao efetuar login : " + ex.Message, "Ok");

				//TelaCarregamento();
			}
			finally
			{
				IsLoading = false;
			}

		}

		private void BTNCriar_Clicked(object sender, EventArgs e)
		{
			Navigation.PushAsync(new Cadastro());
		}

		private void BTNResetPassword_Clicked(object sender, EventArgs e)
		{
			Navigation.PushAsync(new ResetPassword());
		}

		private void BTNSobre_Clicked(object sender, EventArgs e)
		{
			Navigation.PushAsync(new Page1());
		}



	}
}
