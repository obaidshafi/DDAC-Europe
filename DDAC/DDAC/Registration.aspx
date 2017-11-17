<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="DDAC.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
<h2 class="text-center">Registration</h2>
     <div class="container">
         <fieldset>
       <asp:Label ID="Label1" runat="server">Full Name: </asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_fullname"
                        ErrorMessage="FullName is required" ForeColor="Red" ValidationGroup="grp2"></asp:RequiredFieldValidator>

                    <asp:TextBox ID="txt_fullname" runat="server" Width="200px" class="form-control" ValidationGroup="grp2"></asp:TextBox>
                  <br>
                   
               
       </fieldset>
                <fieldset>
       <asp:Label ID="Label4" runat="server">Email: </asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_register_email"
                        ErrorMessage="Email is required" ForeColor="Red" ValidationGroup="grp2"></asp:RequiredFieldValidator>

                    <asp:TextBox ID="txt_register_email" runat="server" Width="200px" class="form-control" ValidationGroup="grp2"></asp:TextBox>
                  <br>
                   
               
       </fieldset>
            <fieldset>
       <asp:Label ID="Label12" runat="server">Password: </asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="confirmPass"
                        ErrorMessage="Password is required" ForeColor="Red" ValidationGroup="grp2"></asp:RequiredFieldValidator>

                    <asp:TextBox ID="pass" runat="server" Width="200px" class="form-control" TextMode="Password" ValidationGroup="grp2"></asp:TextBox>
               <br>
                <asp:Label ID="Label2" runat="server">Confirm Password: </asp:Label>
               <asp:TextBox ID="confirmPass" runat="server" Width="200px" class="form-control" TextMode="Password" ValidationGroup="grp2"></asp:TextBox>
                  <br>
                   
               
       </fieldset>
                  <fieldset>
       <asp:Label ID="Label9" runat="server">Phone#: </asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txt_phone"
                        ErrorMessage="Phone No is required" ForeColor="Red" ValidationGroup="grp2"></asp:RequiredFieldValidator>

                    <asp:TextBox ID="txt_phone" runat="server" Width="200px" class="form-control" ValidationGroup="grp2"></asp:TextBox>
                  <br>
               
               
       </fieldset>
      
          
        <asp:CheckBox ID="CheckBox1" runat="server" Text="Clicking this checkBox means that you agree to the Buddy Corp terms, Conditions and privacy and cookies statement."/><br/>
      <asp:Button ID="createUser" runat="server" Text="Create Account" class="btn btn-primary"  ValidationGroup="grp2" OnClick="createUser_Click" />
     
        </div>
</asp:Content>
