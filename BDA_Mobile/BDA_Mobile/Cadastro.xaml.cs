using BDA_Mobile.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.PlatformConfiguration;
using Xamarin.Forms.Xaml;

namespace BDA_Mobile
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class Cadastro : ContentPage
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

		bool carregando;

		public Cadastro()
		{
			InitializeComponent();
			BindingContext = this;

			NavigationPage.SetHasNavigationBar(this, true);
			NavigationPage.SetHasBackButton(this, true);

			//Formatação da Fonte da Barra de Navegação da tela de Cadastro 

			NavigationPage.SetTitleView(this, new Label { Text = "Voltar Página Inicial" });
			var label = new Label
			{
				Text = "VOLTAR PÁGINA INICIAL",
				TextColor = Color.Blue,
				FontSize = Device.GetNamedSize(NamedSize.Subtitle, typeof(Label)),
				FontAttributes = FontAttributes.Bold,
				HorizontalTextAlignment = TextAlignment.Center,
				VerticalTextAlignment = TextAlignment.Center,
				FontFamily = "Arial"
			};

			NavigationPage.SetTitleView(this, new StackLayout
			{
				Children = { label },
				Padding = new Thickness(0, 10, 0, 0),
				Margin = new Thickness(10, 0, 0, 0),
				VerticalOptions = LayoutOptions.CenterAndExpand,
				HorizontalOptions = LayoutOptions.Start
			});
			NavigationPage.SetBackButtonTitle(this, "Voltar");

			////var navigationPage = Application.Current.MainPage as NavigationPage;
			//navigationPage.BarBackgroundColor = Color.Transparent;
			//navigationPage.Opacity = 0;\\
		}

		public void TelaCarregamento()
		{
			if (carregando)
			{
				BVTelaPreta.IsVisible = false;

				carregando = false;
			}
			else
			{
				BVTelaPreta.IsVisible = true;

				carregando = true;
			}
		}



		private Entry TXTCriarSenha1 => TXTCriarSenha;

		private Entry GetTXTCriarSenha()
		{
			return TXTCriarSenha;
		}

		private async void BTNCriarAcesso_Clicked_1(object sender, EventArgs e)
		{
			try
			{

				if (TXTCriarEmail.Text == null || TXTCriarSenha.Text == null || TXTConfirmarSenha.Text == null)
				{
					await DisplayAlert("Falha", "Email ou Senha não informados. Tente novamente.", "Ok");
					return;
				}

				if (TXTCriarSenha.Text != TXTConfirmarSenha.Text)
				{
					await DisplayAlert("Falha", "As senhas não correspodem", "Ok");
					return;
				}

				IsLoading = true;

				var acesso = new ServicosUser();
				bool criaracesso = await acesso.RegistrarUsuario(TXTCriarEmail.Text, TXTCriarSenha.Text);
				if (criaracesso)

				{
					await DisplayAlert("Sucesso", "Usuário Criado", "Ok");
					await Navigation.PushAsync(new MainPage());

					TelaCarregamento();
					return;
				}

				else
				{
					await DisplayAlert("Falha", "Não foi possível criar um usuário, tente novamente!", "Ok");
					TelaCarregamento();
					return;
				}
			}
			catch
			{
				await DisplayAlert("Falha", "Ocorreu um erro!", "Ok");
				TelaCarregamento();
			}
			finally { IsLoading = false; }

		}

		private void BTNCancelar_Clicked(object sender, EventArgs e)
		{
			TXTCriarEmail.Text = string.Empty;
			TXTConfirmarSenha.Text = string.Empty;
			TXTCriarSenha.Text = string.Empty;
		}
	}
}