<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="ContactUsEmailform.ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 40px;
            width: 47%;
        }
        .auto-style4 {
            height: 40px;
            width: 14%;
        }
        .auto-style5 {
            width: 14%;
        }
        .auto-style8 {
            height: 40px;
            width: 358px;
        }
        .auto-style9 {
            width: 358px;
        }
        .auto-style11 {
            width: 47%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <fieldset style ="width:100%">
                <legend>Contact Us</legend>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style5">Name</td>
                        <td class="auto-style9">
                            <asp:TextBox ID="txtName" runat="server" Width="650px"></asp:TextBox>
                        </td>
                        <td class="auto-style11">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">Email</td>
                        <td class="auto-style9">
                            <asp:TextBox ID="txtEmail" runat="server" Width="650px"></asp:TextBox>
                        </td>
                        <td class="auto-style11">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Email is required" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Invalid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="#CC0000">*</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">Subject</td>
                        <td class="auto-style9">
                            <asp:TextBox ID="txtSubject" runat="server" Width="650px"></asp:TextBox>
                        </td>
                        <td class="auto-style11">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtSubject" ErrorMessage="Subject is required" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5" style="vertical-align:top">Content</td>
                        <td class="auto-style9" style="vertical-align:top"">
                            <asp:TextBox ID="txtContent" runat="server" Rows="5" TextMode="MultiLine" Width="650px"></asp:TextBox>
                        </td>
                        <td class="auto-style11" style="vertical-align:top">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtContent" ErrorMessage="Content is required" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#CC0000" HeaderText="Please fix the following errors before submitting your form." />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="lblMessageConfirmation" runat="server"></asp:Label>
                        </td>
                        <td class="auto-style8"></td>
                        <td class="auto-style2"></td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:Button ID="btnSubmit" runat="server" Text="Send Message via e-mail" OnClick="btnSubmit_Click" />
                        </td>
                    </tr>
                </table>
            </fieldset>
        </div>
    </form>
</body>
</html>
