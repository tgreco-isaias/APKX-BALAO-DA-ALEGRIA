using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace BDA_Mobile
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class Page1 : ContentPage
	{
		public Page1()
		{
			InitializeComponent();
		}

		public void Button_clicked(object sender, EventArgs e)
		{
			Navigation.PushAsync(new MainPage()); // redireciona para a página de login
		}

		private async void OnLinkTapped(object sender, EventArgs e)
		{
			var url = "http://balaodaalegria.com/";
			await Launcher.OpenAsync(new Uri(url));
		}
	}
}



