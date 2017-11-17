<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DDAC._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron" style="background: url('../marquee.jpg');background-repeat:no-repeat;background-color:#28b8f7;">
    <p align="right">
         <%
                            if (Session["username"] != null)
                            {%>
                            <a href="SearchFlight.aspx" class="btn btn-primary btn-lg">Book a Flight &raquo;</a>
                            <% }
                            else
                            {
                            %>
                            
                            <% } %>
        
    </p>        
    <h1>Ukraine International Airline</h1>
            <p class="lead">Book Flights at the best rates !</p>
            
</div>

<div class="row">
    <div class="col-md-4">
        <h3>About us</h3>
        <p>
            Ukraine International Airlines (UIA) is the flagship carrier and largest airline in Ukraine. It operates domestic 
            and international passenger flights and cargo services tp Europe, the Middle East, the United States and Asia.
        </p>
        <p><a class="btn btn-default"  href="About.aspx">Learn more &raquo;</a></p>
    </div>
    <div class="col-md-4">
        
        <p>
            <h3>Mobile Apps</h3>
            <a href=""><img src="http://www.iconninja.com/files/139/165/213/android-brand-google-store-logo-play-apps-icon.png" height="75" width="75"/></a>
            <a href=""><img src="http://www.iconninja.com/files/763/729/213/apple-app-store-icon.png" height="75" width="75"/></a>
        </p>
    </div>
    <div class="col-md-4">
        <h3>Contact us</h3>
        <p><abbr title="Phone">Phone:</abbr>+38 (044) 581-50-50 </p>
        <p><abbr title="Phone">Phone:</abbr>+38 (044) 593-76-08 </p>
        <p><abbr title="Email">Email:</abbr>сontact@flyuia.com</p>
        <p><a class="btn btn-default"  href="Contact.aspx">Learn more &raquo;</a></p>
        <p>You can also to change your booking or book a flight online, ask questions about purchasing airline tickets, making changes to tickets or ordering additional services.</p>
    </div>
</div>

</asp:Content>
