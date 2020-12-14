<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UC_AnasayfaKategoriler.ascx.cs" Inherits="HaberAdmin.W_WUC.UC_AnasayfaKategoriler" %>


<div class="row">

    <%foreach (var item in AKHListe)

        {
            habersira++;
    %>
    <div class="col-lg-4">
        <div class="card-deck mt-3">
            <div class="card br-close">
                <img class="card-img-top br-close img-cvr" src="<%=item.HaberResimUrl %>" alt="Card image cap">
                <div class="card-body">
                    <p class="card-text hd-cards"><%=item.HaberBaslik %></p>
                </div>
            </div>
        </div>
    </div>

    <%} %>
</div>
