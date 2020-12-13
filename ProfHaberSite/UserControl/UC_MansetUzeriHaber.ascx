<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UC_MansetUzeriHaber.ascx.cs" Inherits="ProfHaberSite.UserControl.UC_MansetUzeriHaber" %>
        <div class="card-deck mt-3">

<asp:Repeater ID="Rptr_Mansetuzeri" runat="server">
    <ItemTemplate>
            <div class="card br-close">
                <img class="card-img-top br-close" src="<%# Eval("HaberResimUrl") %>" alt="<%# Eval("HaberBaslik") %>">
                <div class="card-body">
                    <p class="card-text hd-cards h-25 "><%# Eval("HaberBaslik") %></p>
                </div>

            </div>
            
 
        </ItemTemplate>
</asp:Repeater>
        </div>
