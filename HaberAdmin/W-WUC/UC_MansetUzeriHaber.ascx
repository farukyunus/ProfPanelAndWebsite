<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UC_MansetUzeriHaber.ascx.cs" Inherits="HaberAdmin.W_WUC.UC_MansetUzeriHaber" %>


<div class="card-deck <%= Request.Browser.IsMobileDevice == true ? "" : "mt-3" %>">
    <%foreach (var item in MansetUzeriList)
        {%>
    <div class="card br-close <%= Request.Browser.IsMobileDevice == true ? "mt-3" : "" %>">
        <a class="linkstyle" href="<%=item.Haber_Url %>" title="<%=item.HaberBaslik %>">
            <img class="card-img-top br-close img-cvr" src="<%=item.HaberResimUrl%>" alt="<%=item.HaberBaslik %>">
            <div class="card-body">
                <p class="card-text hd-cards h-25"><%= HaberAdmin.Codes.Helper.TxtKisaltma(item.HaberBaslik,80) %></p>
            </div>
        </a>
    </div>
    <%} %>
</div>


