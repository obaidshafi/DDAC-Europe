<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="DDAC.Booking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2 class="text-center">My Bookings</h2>
<div class="text-center">
    <p><a class="btn btn-default" href="SearchFlight">Book a Flight</a></p>
    <p>
        <asp:Button ID="mybooking" runat="server" Text="My Bookings" class="btn btn-default" OnClick="createUser_Click" />
    </p>
    <br>
    <br>
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
</div>

</asp:Content>
