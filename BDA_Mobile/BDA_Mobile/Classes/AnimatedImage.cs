using System;
using System.Collections.Generic;
using System.Text;
using Xamarin.Forms;

namespace BDA_Mobile
{
	public class AnimatedImage : Image
	{
		public static readonly BindableProperty AnimationProperty = BindableProperty.Create(
			nameof(Animation),
			typeof(ImageSource),
			typeof(AnimatedImage),
			default(ImageSource)
		);


		public AnimatedImage()
		{
			Source = Animation; // define a imagem estática inicial como a primeira frame da animação

			var animation = new Animation(); // cria a animação

			// adicione as diferentes frames da animação ao objeto "animation" aqui

			animation.Commit(this, "Animation", length: 16, repeat: () => true); // inicie a animação
		}


		public ImageSource Animation
		{
			get { return (ImageSource)GetValue(AnimationProperty); }
			set { SetValue(AnimationProperty, value); }
		}
	}
}
