using System;
using System.Collections.Generic;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;

namespace BDA_Mobile.Classes
{
	public class EmailService
	{
		public async Task SendMail(MailMessage mail)
		{
			var smtp_username = "sac@balaodaalegria.com";
			var smtp_password = "#Milly1428";

			var host = "smtp.umbler.com";

			mail.From = new MailAddress(smtp_username);

			mail.IsBodyHtml = true;

			// Configure do cliente:
			var client = new System.Net.Mail.SmtpClient(host);

			client.Port = 587;
			client.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
			client.UseDefaultCredentials = false;

			// Cria as credenciais:
			System.Net.NetworkCredential credentials =
				new System.Net.NetworkCredential(smtp_username, smtp_password);

			client.EnableSsl = true;
			client.Credentials = credentials;

			await client.SendMailAsync(mail);
		}

	}
}
