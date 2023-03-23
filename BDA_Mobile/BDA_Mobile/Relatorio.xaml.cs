using OfficeOpenXml;
using Plugin.FilePicker;
using Plugin.FilePicker.Abstractions;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace BDA_Mobile
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class Relatorio : ContentPage
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

		private string OpcaoSelecionada { get; set; }

		public Relatorio()
		{
			InitializeComponent();

			BindingContext = this;

		}

		private void OnOpcaoSelecionada(object sender, CheckedChangedEventArgs e)
		{
			if (e.Value)
			{
				OpcaoSelecionada = ((RadioButton)sender).Content.ToString();
			}
		}
		

		private async void OnConfirmarSelecao(object sender, EventArgs e)
		{
			if (string.IsNullOrEmpty(OpcaoSelecionada))
			{
				await DisplayAlert("Opção não selecionada", "Por favor, selecione uma opção.", "OK");
			}
			else
			{
				await DisplayAlert("Opção selecionada", $"A opção selecionada foi: {OpcaoSelecionada}", "OK");
			}
		}

		private void Entry_QuantidadeChanged(object sender, TextChangedEventArgs e)
		{
			//CALCULO QUANTIDADE DE MENINOS 

			int meninosTotal3_5 = 0;
			int meninosTotal6_8 = 0;
			int meninosTotal9Mais = 0;

			int.TryParse(entryMeninos3_5anos.Text, out meninosTotal3_5);
			int.TryParse(entryMeninos6_8anos.Text, out meninosTotal6_8);
			int.TryParse(entryMeninos9Maisanos.Text, out meninosTotal9Mais);


			//CALCULO QUANTIDADE DE MENINAS 

			int meninasTotal3_5 = 0;
			int meninasTotal6_8 = 0;
			int meninasTotal9Mais = 0;

			int.TryParse(entryMeninas3_5anos.Text, out meninasTotal3_5);
			int.TryParse(entryMeninas6_8anos.Text, out meninasTotal6_8);
			int.TryParse(entryMeninas9Maisanos.Text, out meninasTotal9Mais);

			//SOMA GEERAL DE MENINOS E MENINAS

			entryTotalGeral.Text = (meninosTotal3_5 + meninosTotal6_8 + meninosTotal9Mais + meninasTotal3_5 + meninasTotal6_8 + meninasTotal9Mais).ToString();


		}

		private async void OnGerarRelatorio(object sender, EventArgs e)
		{
			try
			{
				IsLoading = true;

				// Verifica se os dados estão preenchidos corretamente
				if (string.IsNullOrEmpty(entryMeninos3_5anos.Text)
					|| string.IsNullOrEmpty(entryMeninos6_8anos.Text)
					|| string.IsNullOrEmpty(entryMeninos9Maisanos.Text)
					|| string.IsNullOrEmpty(entryMeninas3_5anos.Text)
					|| string.IsNullOrEmpty(entryMeninas6_8anos.Text)
					|| string.IsNullOrEmpty(entryMeninas9Maisanos.Text)

					)
				{
					await DisplayAlert("Erro", "Por favor, preencha todos os campos corretamente.", "OK");
					return;
				}

				int meninosTotal3_5 = 0;
				int meninosTotal6_8 = 0;
				int meninosTotal9Mais = 0;

				int.TryParse(entryMeninos3_5anos.Text, out meninosTotal3_5);
				int.TryParse(entryMeninos6_8anos.Text, out meninosTotal6_8);
				int.TryParse(entryMeninos9Maisanos.Text, out meninosTotal9Mais);


				//CALCULO QUANTIDADE DE MENINAS 

				int meninasTotal3_5 = 0;
				int meninasTotal6_8 = 0;
				int meninasTotal9Mais = 0;

				int.TryParse(entryMeninas3_5anos.Text, out meninasTotal3_5);
				int.TryParse(entryMeninas6_8anos.Text, out meninasTotal6_8);
				int.TryParse(entryMeninas9Maisanos.Text, out meninasTotal9Mais);


				//var fileData = await CrossFilePicker.Current.PickFile();

				//if (fileData == null)
				//	return;

				var externalDir = FileSystem.AppDataDirectory;
				var filePath = Path.Combine(externalDir, "relatorio.xlsx");

				if (File.Exists(filePath))
					File.Delete(filePath);

				//// Exporta para Excel
				WriteExcelFile(filePath, NomeRecreador.Text, NomeArtistico.Text, NomeCondominio.Text, meninosTotal3_5, meninosTotal6_8, meninosTotal9Mais, meninasTotal3_5, meninasTotal6_8, meninasTotal9Mais);

				await Launcher.OpenAsync(new OpenFileRequest
				{
					File = new ReadOnlyFile(filePath),
					Title = "Abrir arquivo XLSX"
				});

				// Exibe uma mensagem de sucesso
				await DisplayAlert("Sucesso", "O relatório foi gerado e exportado para Excel.", "OK");
			}
			finally
			{
				IsLoading = false;
			}
		}


		public void WriteExcelFile(string filePath, string nomeCompleto, string recreador, string condominio, int meninos3_5, int meninos6_8, int meninos9Mais, int meninas3_5, int meninas6_8, int meninas9Mais)
		{
			// Cria o arquivo Excel e adiciona uma planilha
			using (ExcelPackage package = new ExcelPackage(new FileInfo(filePath)))
			{
				ExcelWorksheet worksheet = package.Workbook.Worksheets.Add("Pessoas");



				// Adiciona os cabeçalhos de coluna
				worksheet.Cells[1, 1].Value = "Meninos 3-5";
				worksheet.Cells[1, 2].Value = "Meninos 6-8";
				worksheet.Cells[1, 3].Value = "Meninos 9+";

				worksheet.Cells[1, 4].Value = "Meninas 3-5";
				worksheet.Cells[1, 5].Value = "Meninas 6-8";
				worksheet.Cells[1, 6].Value = "Meninas 9+";

				worksheet.Cells[1, 7].Value = "Total Meninos";
				worksheet.Cells[1, 8].Value = "Total Meninas";
				worksheet.Cells[1, 9].Value = "Total Geral";
				worksheet.Cells[1, 10].Value = "Nome Completo";
				worksheet.Cells[1, 11].Value = "Recreador";
				worksheet.Cells[1, 12].Value = "Condomínio";

				worksheet.Cells[2, 1].Value = meninos3_5.ToString();
				worksheet.Cells[2, 2].Value = meninos6_8.ToString();
				worksheet.Cells[2, 3].Value = meninos9Mais.ToString();

				worksheet.Cells[2, 4].Value = meninas3_5.ToString();
				worksheet.Cells[2, 5].Value = meninas6_8.ToString();
				worksheet.Cells[2, 6].Value = meninas9Mais.ToString();

				worksheet.Cells[2, 7].Value = (meninos3_5 + meninos6_8 + meninos9Mais).ToString();
				worksheet.Cells[2, 8].Value = (meninas3_5 + meninas6_8 + meninas9Mais).ToString();

				worksheet.Cells[2, 9].Value = (meninos3_5 + meninos6_8 + meninos9Mais + meninas3_5 + meninas6_8 + meninas9Mais).ToString();
				worksheet.Cells[2, 10].Value = nomeCompleto;
				worksheet.Cells[2, 11].Value = recreador;
				worksheet.Cells[2, 12].Value = condominio;


				// Salva o arquivo Excel
				package.Save();
			}
		}
	}
}