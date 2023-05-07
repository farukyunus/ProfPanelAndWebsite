<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UC_SurmansetHaber.ascx.cs" Inherits="HaberAdmin.W_WUC.UC_SurmansetHaber" %>

<%if (mobil)
{%>
    <div class="card-deck <%= Request.Browser.IsMobileDevice == true ? "" : "mt-3" %>">
    <%foreach (var item in Surmanset)
        {%>
    <div class="card br-close <%= Request.Browser.IsMobileDevice == true ? "mt-3" : "" %>">
        <img class="card-img-top br-close img-cvr" src="<%=item.HaberResimUrl %>" alt="<%=item.HaberBaslik %>">
        <div class="card-body">
            <p class="card-text hd-cards h-25 "><%= HaberAdmin.Codes.Helper.TxtKisaltma(item.HaberBaslik,80) %> </p>
        </div>
    </div>
    <%} %>
</div>
<%} %>

<%else
{%>
    <div class="row mt-3">
    <div class="col-lg-12">
        <!-- Swiper -->
        <div class="swip-large-slider">
            <div class="swiper-container test">
                <div class="swiper-wrapper">
                    <%foreach (var item in Surmanset)
                        {%>
                    <div class="swiper-slide">
                        <div class="lar-title"><%=!string.IsNullOrEmpty(item.MansetBaslik) ? item.MansetBaslik : item.HaberBaslik %></div>
                        <img src="<%= !string.IsNullOrEmpty(item.HaberMansetResimUrl) ? item.HaberMansetResimUrl : item.HaberResimUrl  %>" class="img-fluid">
                    </div>
                        <%} %>
                </div>
                <!-- Add Pagination -->
                <div class="swiper-pagination"></div>
            </div>
        </div>
    </div>
</div>
<% }%>