using Plugin.FilePicker.Abstractions;
using System;
using System.Collections.Generic;
using System.Text;
using Splat;
using Xamarin.Essentials;
using System.Threading.Tasks;

namespace BDA_Mobile.Classes
{
	internal class FolderPicker : IFilePicker
	{
		public void OpenFile(string fileToOpen)
		{
			throw new NotImplementedException();
		}

		public void OpenFile(FileData fileToOpen)
		{
			throw new NotImplementedException();
		}

		public Task<FileData> PickFile(string[] allowedTypes = null)
		{
			throw new NotImplementedException();
		}

		public Task<bool> SaveFile(FileData fileToSave)
		{
			throw new NotImplementedException();
		}
	}
}
