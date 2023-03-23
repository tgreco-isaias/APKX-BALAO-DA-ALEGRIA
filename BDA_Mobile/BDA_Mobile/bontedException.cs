using System;
using System.Runtime.Serialization;

namespace BDA_Mobile
{
	[Serializable]
	internal class bontedException : Exception
	{
		public bontedException()
		{
		}

		public bontedException(string message) : base(message)
		{
		}

		public bontedException(string message, Exception innerException) : base(message, innerException)
		{
		}

		protected bontedException(SerializationInfo info, StreamingContext context) : base(info, context)
		{
		}
	}
}