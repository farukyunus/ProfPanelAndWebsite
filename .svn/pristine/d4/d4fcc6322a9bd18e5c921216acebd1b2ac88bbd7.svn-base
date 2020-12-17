<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UC_SurmansetHaber.ascx.cs" Inherits="HaberAdmin.W_WUC.UC_SurmansetHaber" %>

<%if (mobil)
    {%>

    <div class="card-deck <%= Request.Browser.IsMobileDevice == true ? "" : "mt-3" %>">
        <asp:Repeater ID="Rptr_Surmanset_Mobil" runat="server">
            <ItemTemplate>
                <div class="card br-close <%= Request.Browser.IsMobileDevice == true ? "mt-3" : "" %>">
                    <img class="card-img-top br-close img-cvr" src="<%# Eval("HaberResimUrl") %>" alt="<%# Eval("HaberBaslik") %>">
                    <div class="card-body">
                        <p class="card-text hd-cards h-25 "><%# HaberAdmin.Codes.Helper.TxtKisaltma(Eval("HaberBaslik").ToString(),80) %> </p>
                    </div>
                </div>

            </ItemTemplate>
        </asp:Repeater>
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
                            <asp:Repeater ID="Rptr_Surmanset" runat="server">
                            <ItemTemplate>
                                <div class="swiper-slide">
                                <div class="lar-title"><%# !string.IsNullOrEmpty(Eval("MansetBaslik").ToString()) ? Eval("MansetBaslik") : Eval("HaberBaslik") %></div>
                                <img src="<%# !string.IsNullOrEmpty(Eval("HaberMansetResimUrl").ToString()) ? Eval("HaberMansetResimUrl") : Eval("HaberResimUrl")  %>" class="img-fluid">
                            </div>
                                </ItemTemplate>
                                </asp:Repeater>

                        </div>
                        <!-- Add Pagination -->
                        <div class="swiper-pagination"></div>

                    </div>
                </div>

            </div>
        </div>

<% }%>