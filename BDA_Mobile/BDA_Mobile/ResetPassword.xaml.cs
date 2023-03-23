using BDA_Mobile.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace BDA_Mobile
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class ResetPassword : ContentPage
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


		private ServicosUser _db { get; set; }

		public ResetPassword()
		{
			InitializeComponent();
			BindingContext = this;

			_db = new ServicosUser();
		}

		

		private async void BtnEnviarEmail_ClickedAsync(object sender, EventArgs e)
		{
			try
			{
				IsLoading= true;

				if (TxtEmailReset.Text == null || string.IsNullOrEmpty(TxtEmailReset.Text))
				{
					await DisplayAlert("Erro", "Digite seu e-mail para receber o código!", "Ok");
					return;
				}

				TxtEmailReset.Text = TxtEmailReset.Text.Trim();

				var usuarioService = new ServicosUser();

				var emailExiste = await usuarioService.VerificarEmail(TxtEmailReset.Text);

				if (!emailExiste)
				{
					await DisplayAlert("Erro", "O email informado não existe!", "Ok");
					return;
				}

				int codigoRandomico = int.Parse(new Random().Next(100000, 999999).ToString());

				var isCodeUpdated = await _db.AtualizarResetCode(TxtEmailReset.Text, codigoRandomico);

				if (!isCodeUpdated)
				{
					await DisplayAlert("Erro", "Não foi possível gerar seu código de reset, tente novamente mais tarde", "Ok");
					return;
				}

				string mensagemEmail = $"Você solicitou recuperar sua senha no aplicativo BDA, seu código de recuperação é: <b>{codigoRandomico}</b>";

				var email = new System.Net.Mail.MailMessage()
				{
					Subject = "BDA - Recuperar Senha",
					Body = mensagemEmail,
				};

				email.To.Add(TxtEmailReset.Text);

				var service = new EmailService();
				await service.SendMail(email);

				await DisplayAlert("Successo", "Enviamos um código em seu email para você recuperar sua senha, entre agora com este código.", "Ok");


				//EXIBE O CAMPO PARA INSERIR O CODIGO
				labelCodeReset.IsVisible = true;
				TxtCodeReset.IsVisible = true;
				BtnConfirmarCodigo.IsVisible = true;

				TxtEmailReset.IsReadOnly = true;

				BtnEnviarEmail.Text = "Não recebi o e-mail, por favor Reenviar";
				BtnEnviarEmail.BackgroundColor = Color.Black;
				BtnEnviarEmail.TextColor = Color.White;
				BtnEnviarEmail.HorizontalOptions = LayoutOptions.Center;
				BtnEnviarEmail.VerticalOptions = LayoutOptions.CenterAndExpand;
				BtnEnviarEmail.CornerRadius = 10; // valor pode ser ajustado de acordo com sua preferência



			}
			finally
			{
				IsLoading= false;
			}

		}

		private async void BtnConfirmCode_ClickedAsync(object sender, EventArgs e)
		{
			try
			{

				IsLoading = true;

				var usuario = await _db.GetUserByLogin(TxtEmailReset.Text);

				if (TxtCodeReset.Text != usuario.resetCode.ToString())
				{
					await DisplayAlert("Erro", "Código Inválido", "Ok");
					return;
				}

				//OCULTAR OS OUTROS CAMPOS DA TELA
				labelCodeReset.IsVisible = false;
				TxtCodeReset.IsVisible = false;

				BtnConfirmarCodigo.IsVisible = false;

				labelEmailReset.IsVisible = false;
				TxtEmailReset.IsVisible = false;

				BtnEnviarEmail.IsVisible = false;

				//EXIBE OS CAMPOS PARA RESETAR A SENHA
				labelNovaSenha.IsVisible = true;
				TxtNovaSenha.IsVisible = true;

				labelConfirmNovaSenha.IsVisible = true;
				TxtConfirmNovaSenha.IsVisible = true;

				BtnTrocarSenha.IsVisible = true;

				await DisplayAlert("Successo", "Código confirmado com sucesso! Agora por favor entre com sua nova senha!", "Ok");
			}
			finally
			{ IsLoading= false; }
		}

		private async void BtnTrocarSenha_ClickedAsync(object sender, EventArgs e)
		{
			try
			{
				IsLoading = true;

				var usuario = await _db.GetUserByLogin(TxtEmailReset.Text);

				if (TxtNovaSenha.Text != TxtConfirmNovaSenha.Text)
				{
					await DisplayAlert("Erro", "Os campos Senha e Confirmar Senha estão diferentes!", "Ok");
					return;
				}

				var sucesso = await _db.AtualizarSenha(TxtEmailReset.Text, TxtNovaSenha.Text);

				if (!sucesso)
				{
					await DisplayAlert("Erro", "Não foi possível atualizar sua senha, tente novamente mais tarde!", "Ok");
					return;
				}

				await DisplayAlert("Successo", "Sua senha foi atualizada com sucesso!", "Ok");
				await Navigation.PushAsync(new MainPage()); // redireciona para a página de login
			}
			finally
			{
				IsLoading= false;
			}
		}

		

		
	}

	}
