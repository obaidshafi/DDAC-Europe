<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DDAC.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  
      <style>
    /* unvisited link */

/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

 .btn-1:hover:after {
  height: 100%;
} 
   

/* Set a style for all buttons */

    label {
    color:white
    }
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}
/* Add padding to container elements */
.container {
    padding: 16px;
}


</style>

  <div class="login">
	<h1>Login</h1>
    <label>Username :</label>
      <asp:RequiredFieldValidator ID="valid_login_pass" runat="server" 
                            ErrorMessage="Email is required" ControlToValidate="username" 
                            AutoPostBack="false" ForeColor="Red" SetFocusOnError="True" ValidationGroup="grp1" ></asp:RequiredFieldValidator>
      <asp:TextBox ID="username" runat="server"></asp:TextBox>
      <label>Password :</label>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ErrorMessage="Password is required" ControlToValidate="password" 
                            AutoPostBack="false" ForeColor="Red" SetFocusOnError="True" ValidationGroup="grp1" ></asp:RequiredFieldValidator>
      <asp:TextBox ID="password" TextMode="Password" runat="server"></asp:TextBox>
  
          <br>  <br>
       <p class="text-center"><asp:Button ID="login" class="btn btn-primary btn-block btn-large" runat="server" ValidationGroup="grp1" Text="Let's Fly" OnClick="login_Click"  /></p>
      <br>
   
</div>
 
         <p ><a class="btn btn-secondary"   href="Registration.aspx">Sign Up &raquo;</a></p>
 
</asp:Content>
