<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UC_AnasayfaKategoriler.ascx.cs" Inherits="HaberAdmin.W_WUC.UC_AnasayfaKategoriler" %>
<div class="row mt-3">
    <div class="col-lg-12">
        <div class="arabaslik b-gundem">Güncel</div>
    </div>
</div>
<div class="row">
    <%foreach (var item in AKHListe)
        {%>
    <div class="col-lg-4">
        <div class="card-deck mt-3">
            <div class="card br-close">
                <a class="linkstyle" href="<%=item.Haber_Url %>" title="<%=item.HaberBaslik %>">
                    <img class="card-img-top br-close img-cvr h200" src="<%=item.HaberResimUrl %>" alt="Card image cap">
                    <div class="card-body minh-80">
                        <p class="card-text hd-cards"><%=item.HaberBaslik %></p>
                    </div>
                </a>
            </div>
        </div>
    </div>
    <%} %>
</div>
