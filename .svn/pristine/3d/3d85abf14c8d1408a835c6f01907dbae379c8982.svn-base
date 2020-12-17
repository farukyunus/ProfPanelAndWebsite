<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UC_MansetAltiHaber.ascx.cs" Inherits="HaberAdmin.W_WUC.UC_MansetAltiHaber" %>

<%if (Rptr_Mansetalti.Items.Count > 3)
    { %>
<div class="card-deck <%= Request.Browser.IsMobileDevice == true ? "" : "mt-3" %>">
    <asp:Repeater ID="Rptr_Mansetalti" runat="server">
        <ItemTemplate>
            <div class="card br-close <%= Request.Browser.IsMobileDevice == true ? "mt-3" : "" %>">
                <img class="card-img-top br-close img-cvr" src="<%# Eval("HaberResimUrl") %>" alt="<%# Eval("HaberBaslik") %>">
                <div class="card-body">
                    <p class="card-text hd-cards h-25 "><%# HaberAdmin.Codes.Helper.TxtKisaltma(Eval("HaberBaslik").ToString(),80) %></p>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</div>
<%} %>