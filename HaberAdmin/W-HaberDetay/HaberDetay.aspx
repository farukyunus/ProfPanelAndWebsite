<%@ Page Title="" Language="C#" MasterPageFile="~/W-SiteMaster.Master" AutoEventWireup="true" CodeBehind="HaberDetay.aspx.cs" Inherits="HaberAdmin.W_HaberDetay.HaberDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-lg-7 mt-3 mb-3 pb-4" style="height: auto; background-color: white;">

                <h1 class="h1 mt-2 ozl-h1"><%=Haber_Detay[0].HaberBaslik %></h1>
                <h2 class="h2 mt-2 ozl-h2"><%=Haber_Detay[0].HaberOzet %></h2>
                <%if (!string.IsNullOrEmpty(Haber_Detay[0].EmbedVideo))
                    {%>
                <%=Haber_Detay[0].EmbedVideo %>
                <%} %>

                <%else{%>

                <img src="<%=Haber_Detay[0].HaberResimUrl %>" alt="<%=Haber_Detay[0].HaberBaslik %>" class="img-cvr-detay mt-2" />

                <%} %>

                <div class="row p-3">
                    <div class="col-lg-12 txt-ads">
                    </div>


                </div>
                <!-- <img src="static/img/ates-kara-dha-2.jpg" class="img-fluid mt-2" alt="" /> -->


                <div class="haber-txt mt-3">
                    <%=Haber_Detay[0].HaberMetin %>
                </div>

                <a href="#" class="badge badge-secondary p-1 mt-1">Ankara</a>
                <a href="#" class="badge badge-secondary p-1 mt-1">Teknoloji</a>
                <a href="#" class="badge badge-secondary p-1 mt-1">İstanbul</a>
                <a href="#" class="badge badge-secondary p-1 mt-1">Uğur Dündar</a>
                <a href="#" class="badge badge-secondary p-1 mt-1">Vicdanı</a>
                <a href="#" class="badge badge-secondary p-1 mt-1">video</a>
                <a href="#" class="badge badge-secondary p-1 mt-1">Özdil</a>
                <a href="#" class="badge badge-secondary p-1 mt-1">Ankara</a>
                <a href="#" class="badge badge-secondary p-1 mt-1">CHP</a>
                <a href="#" class="badge badge-secondary p-1 mt-1">Ankara</a>
                <a href="#" class="badge badge-secondary p-1 mt-1">Ankara</a>
                <a href="#" class="badge badge-secondary p-1 mt-1">Ankara</a>
                <a href="#" class="badge badge-secondary p-1 mt-1">Ankara</a>
                <a href="#" class="badge badge-secondary p-1 mt-1">Ankara</a>
                <a href="#" class="badge badge-secondary p-1 mt-1">Ankara</a>
                <a href="#" class="badge badge-secondary p-1 mt-1">Ankara</a>
                <a href="#" class="badge badge-secondary p-1 mt-1">Ankara</a>
            </div>

            <div class="col-lg-4 mt-3">

                <div class="card br-close-detay" style="height: 500px;">

                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                </div>


                <%foreach (var item in Liste_Haber_Detay)
                    {%>
                <a class="linkstyle" href="<%=item.Haber_Url %>" title="<%=item.HaberBaslik %>">
                    <div class="card-deck mt-3">
                        <div class="card">
                            <img class="card-img-top br-cls" src="<%=item.HaberResimUrl %>" alt="Card image cap">
                            <div class="card-body">
                                <p class="card-text hd-cards"><%=HaberAdmin.Codes.Helper.TxtKisaltma(item.HaberBaslik,100) %></p>
                            </div>
                        </div>
                    </div>
                </a>
                <%} %>

                <div class="card br-close-detay mt-3 mb-3" style="height: 300px;">

                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                </div>

            </div>

        </div>
    </div>
</asp:Content>
