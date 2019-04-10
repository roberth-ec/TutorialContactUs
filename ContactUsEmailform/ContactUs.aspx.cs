using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace ContactUsEmailform
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                if (Page.IsValid)
                {
                    MailMessage mailMessage = new MailMessage();
                    mailMessage.From = new MailAddress("roberthsteven1997@gmail.com");
                    mailMessage.To.Add("roberthsteven1997@gmail.com");
                   
                    mailMessage.Subject = txtSubject.Text;
                    mailMessage.Body = "<b> Sender Name: </b>" + txtName.Text + "<br/>" +
                                       "<b> Sender Email: </b>" + txtEmail.Text + "<br/>" +
                                       "<b> Message: </b>" + txtContent.Text;
                    mailMessage.IsBodyHtml = true;


                    SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                    client.EnableSsl = true;
                    client.Credentials = new System.Net.NetworkCredential("roberthsteven1997@gmail.com", "tecktonic1");
                    client.Send(mailMessage);

                    lblMessageConfirmation.ForeColor = System.Drawing.Color.Green;
                    lblMessageConfirmation.Text = "Thank you for submitting your comments. One of our advisors will be with you shortly";
                    txtName.Enabled = false;
                    txtEmail.Enabled = false;
                    txtContent.Enabled = false;
                    txtSubject.Enabled = false;
                    btnSubmit.Enabled = false;
                }
            }
            catch (Exception ex)
            {

                lblMessageConfirmation.ForeColor = System.Drawing.Color.Red;
                lblMessageConfirmation.Text = ex.StackTrace;
            }
            }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtName.Text = "";
            txtEmail.Text = "";
            txtSubject.Text = "";
            txtContent.Text = "";
        }
    }
}