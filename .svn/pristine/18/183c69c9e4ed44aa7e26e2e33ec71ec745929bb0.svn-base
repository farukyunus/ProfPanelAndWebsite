<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HaberEkle.aspx.cs" Inherits="HaberAdmin.Haberler.HaberEkle" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Haber Ekle</title>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid">
                <div id="layoutAuthentication">
                    <div id="layoutAuthentication_content">

                        <main>
                            <div class="row justify-content-center">
                                <div class="col-lg-10">
                                    <div class="card border-0 rounded-lg">

                                        <div class="card-body">

                                            <%if (vtHaberID > 0 && vtAktifKontrol > 0)
                                                {%>
                                            <button id="btnYayindanKaldir" name="btnYayindanKaldir" type="button" class="btn btn-danger">Yayından Kaldır</button>
                                            <h5 class="mt-4"><%="Haber ID: " + vtHaberID %></h5>
                                            <%} %>

                                            <%if(vtAktifKontrol == 0 && !string.IsNullOrEmpty(ArananID))
                                                {%>
                                            <div class="alert alert-danger col-lg-8" role="alert">Bu haber yayından kaldırılmış. 
                                                <button id="btnAktifEt" name="btnAktifEt" type="button" class="btn btn-success ml-5">Haberi Tekrar Yayınla</button>
                                            </div>

                                            <%}%>
                                            
                                            <form action="/ajax/AjxHaberEkle.aspx" id="HaberGonder" method="post" runat="server">

                                                <div class="form-row">

                                                    <div class="col-lg-8">
                                                        <div class="row">
                                                            <div class="col-lg-4">
                                                                <div class="input-group mb-3">
                                                                    <div class="input-group-prepend">
                                                                        <label class="input-group-text" for="inputGroupSelectKategori">Kategori</label>
                                                                    </div>
                                                                    <select class="custom-select" id="inputGroupSelectKategori" name="inputGroupSelectKategori">
                                                                        <option <%=SelectedKategori == "Güncel" ? "selected" : "" %> value="Güncel">Güncel</option>
                                                                        <option <%=SelectedKategori == "Spor" ? "selected" : "" %> value="Spor">Spor</option>
                                                                        <option <%=SelectedKategori == "Ekonomi" ? "selected" : "" %> value="Ekonomi">Ekonomi</option>
                                                                        <option <%=SelectedKategori == "Emlak" ? "selected" : "" %>value="Emlak">Emlak</option>
                                                                    </select>
                                                                </div>

                                                            </div>
                                                            <div class="col-lg-4">
                                                                <div class="input-group mb-3">
                                                                    <div class="input-group-prepend">
                                                                        <label class="input-group-text" for="inputGroupSelectKonum">Konum </label>
                                                                    </div>
                                                                    <select class="custom-select" id="inputGroupSelectKonum" name="inputGroupSelectKonum">
                                                                        <option <%=SelectedKonum == "anamanset" ? "selected" : "" %> value="anamanset">Ana Manşet</option>
                                                                        <option <%=SelectedKonum == "surmanset" ? "selected" : "" %> value="surmanset">Sürmanşet</option>
                                                                        <option <%=SelectedKonum == "mansetuzerihaber" ? "selected" : "" %> value="mansetuzerihaber">Manşet üstü</option>
                                                                        <option <%=SelectedKonum == "mansetaltihaber" ? "selected" : "" %> value="mansetaltihaber">Manşet altı</option>
                                                                        <option <%=SelectedKonum == "anasayfakategori" ? "selected" : "" %> value="anasayfakategori">Anasayfa Kategori</option>
                                                                    </select>
                                                                </div>

                                                            </div>
                                                            <div class="col-lg-4">
                                                               <div class="mb-3">
                                                                <button title="Manşete özel başlık oluşturmak için kullanabilirsiniz." type="button" id="mansetbaslikclick" class="btn btn-warning pl-3"><strong>Manşet başlığı oluştur</strong></button>
                                                            </div>
                                                                </div>
                                                        </div>

                                                     

                                                        <div class="form-group" id="mansetbaslikolsun">
                                                            <label class="small mb-1 font-weight-bold">Manşet Başlığı</label>
                                                            <textarea rows="1" class="form-control textBaslik" name="MansetBaslik" id="MansetBaslik" placeholder="Manşet Başlığı"></textarea>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="small mb-1 font-weight-bold">Haber Başlığı</label>
                                                            <textarea rows="1" class="form-control textBaslik" name="HaberBaslik" id="HaberBaslik" placeholder="Haber Başlığı"></textarea>
                                                        </div>

                                                        
                                                    </div>


                                                    <div class="col-lg-8">
                                                        <div class="form-group">
                                                            <label class="small mb-1 font-weight-bold">Haber Özeti</label>
                                                            <textarea rows="5" class="form-control textOzet" name="HaberOzet" id="HaberOzet" placeholder="Haber Özeti"></textarea>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-8 test">
                                                        <label class="small mb-1 font-weight-bold" for="HaberMetin">Haber İçeriği</label>
                                                        <CKEditor:CKEditorControl ID="CKEditorControl1" ExtraPlugins="base64image" runat="server"></CKEditor:CKEditorControl>
                                                    </div>

                                                    <div class="mt-3 col-lg-8">
                                                        <div class="border">
                                                            <div class="row pl-3 pb-3">
                                                                <div class="mt-3 col-lg-5">
                                                                    <div class="mb-3">
                                                                        <strong>Haber resmi seçiniz </strong>
                                                                        <br />
                                                                    </div>
                                                                    <asp:FileUpload ID="FileUpload1" runat="server" />

                                                                </div>
                                                                <%if (!string.IsNullOrEmpty(vtHaberResim))
                                                                    {%>
                                                                <div class="mt-3 col-lg-3">
                                                                    <img width="350" src="<%=vtHaberResim %>" alt="<%=vtHaberBaslik %>" />
                                                                </div>
                                                                <%} %>
                                                            </div>

                                                            <div class="row pl-3 pb-3" id="mansetresimsec">
                                                                <div class="mt-3 col-lg-5">
                                                                    <div class="mb-3">
                                                                        <strong>Manşet Resmi Seçiniz</strong>

                                                                        <br />
                                                                    </div>


                                                                    <asp:FileUpload ID="FileUpload2" runat="server" />

                                                                </div>
                                                                <%if (!string.IsNullOrEmpty(vtMansetResim))
                                                                    {%>
                                                                <div class="mt-3 col-lg-3">
                                                                    <img width="350" src="<%=vtMansetResim %>" alt="<%=vtHaberBaslik %>" />
                                                                </div>
                                                                <%} %>
                                                            </div>

                                                            <div class="mb-3 pl-3">
                                                                <button title="Manşet resmi oluşturduysanız seçebilirsiniz." type="button" id="mansetsecclick" class="btn btn-warning pl-3"><strong>Manşet resmi</strong></button>
                                                            </div>

                                                            <div class="mb-3 pl-3">
                                                                <button type="button" id="mansetsecclick-iptal" class="btn btn-danger">İptal</button>
                                                            </div>
                                                        </div>
                                                        <div class="border mt-3">
                                                        <div class="mt-3 col-lg-8 border-bottom pb-3  pt-3">
                                                            <div class="mb-3">
                                                                <strong>Embed Video Iframe</strong>
                                                                <br />
                                                            </div>
                                                            <textarea class="textIframe" cols="50" id="video_embed" name="video_embed"></textarea>

                                                        </div>
                                                            </div>
                                                    </div>

                                                </div>


                                                <input style="display: none;" type="text" id="rq_txt" name="rq_txt" value="<%=Request.QueryString["Kaydedilen_ID"] != null &&  !string.IsNullOrEmpty(Request.QueryString["Kaydedilen_ID"].ToString()) ? Request.QueryString["Kaydedilen_ID"].ToString():"" %>" />
                                                <input style="display: none;" type="text" id="rq_ara_id" name="rq_ara_id" value="<%=Request.QueryString["HaberAra"] != null &&  !string.IsNullOrEmpty(Request.QueryString["HaberAra"].ToString()) ? Request.QueryString["HaberAra"].ToString():"" %>" />
                                                <%--<div  style="display:none;"></div>--%>

                                                <div class="form-group mt-4 mb-0 col-md-2 pl-0">
                                                    <input class="btn btn-primary btn-block" type="submit" value="Kaydet / Güncelle" runat="server">
                                                </div>
                                            </form>
                                        </div>
                                        <div class="col-md-5">
                                            <%if (!string.IsNullOrEmpty(message))
                                                {%>
                                            <div class="<%=type %>" role="alert"><%=message %></div>
                                            <%} %>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </main>
                    </div>
                </div>
            </div>
        </main>
        <footer class="py-4 bg-light mt-auto">
            <div class="container-fluid">
                <div class="d-flex align-items-center justify-content-between small">
                    <div class="text-muted">Copyright &copy; Your Website 2019</div>
                    <div>
                        <a href="#">Privacy Policy</a> &middot;

                    <a href="#">Terms &amp; Conditions</a>
                    </div>
                </div>
            </div>
        </footer>
    </div>

    <style>
        .uyari {
            color: red;
            font-weight: 500;
        }

        .uyari-ok {
            color: forestgreen;
            font-weight: 500;
        }
    </style>
    <script src="/ckeditor/ckeditor.js"></script>

    <script>
        $(document).ready(function () {
            window.document.getElementById("HaberBaslik").innerText = "<%=vtHaberBaslik.Replace("\r", "").Replace("\n", "").Replace("\"","'")%>";
            window.document.getElementById("MansetBaslik").innerText = "<%=vtMansetBaslik.Replace("\r", "").Replace("\n", "").Replace("\"","'")%>";
            window.document.getElementById("HaberOzet").innerText = "<%=vtHaberOzet.Replace("\r", "").Replace("\n", "").Replace("\"","'") %>";
            window.document.getElementById("video_embed").innerText = "<%=vtEmbedVideo.Replace("\r", "").Replace("\n", "").Replace("\"","'")%>";

            $.validator.setDefaults({
                submitHandler: function () {
                    ("#HaberGonder").submit();
                }
            });

            $('#HaberGonder').validate({
                rules: {
                    HaberBaslik: {
                        required: true,
                        minlength: 2,
                    },
                    HaberOzet: {
                        required: true,
                        minlength: 10,
                        maxlength: 250,
                    },
                    MansetBaslik: {
                        required: true,
                        maxlength: 250,
                    }
                    //,
                    //ContentPlaceHolder1_CKEditorControl1: {
                    //    required: true,
                    //    minlength: 2,
                    //}
                },

                messages: {
                    HaberBaslik: {
                        required: 'Haber başlığı giriniz.',
                        minlength: '<span class="uyari">Bu kadar kısa haber başlığı olmaz</span>',
                    },
                    HaberOzet: {
                        required: 'Haber özeti giriniz. ',
                        minlength: '<span class="uyari">Haber spotunu düzgün gir</span>',
                        maxlength: '250 Karakterden fazla girmeyin',


                    },
                    MansetBaslik: {
                        required: 'Manşet Başlığını',
                        maxlength: '250 Karakterden fazla girmeyin',


                    },
                    //ContentPlaceHolder1_CKEditorControl1: {
                    //     required: 'Haber içeriğini giriniz. ',
                    //    minlength: 'Haber içeriğini düzgün gir',
                    //},

                }
            });
        })

        $("#mansetbaslikolsun").hide();
        $("#mansetresimsec").hide();
        $("#mansetsecclick-iptal").hide();

         $("#mansetbaslikclick").click(function () {
            $("#mansetbaslikolsun").toggle()
        });

        $("#mansetsecclick").click(function () {

            $("#mansetsecclick-iptal").show()
            $("#mansetresimsec").show();
            $("#mansetsecclick").hide();


        });
        $("#mansetsecclick-iptal").click(function () {
            $("#mansetsecclick").show();
            $("#mansetsecclick-iptal").hide();
            $("#mansetresimsec").hide();
        });


        $("#inputGroupSelectKonum").change(function () {
            if ($('#inputGroupSelectKonum option:selected').val() =="surmanset")
            {               
                alert("Sürmanşet alanında haber yayınlamak için 'Manşet Resmi' de seçiniz. 'Manşet Resmi' için önerilen boyut (1200x250)");
            }
        });

        
    </script>

    <script type="text/javascript">
    $(document).ready(function () {
        $("#btnYayindanKaldir").click(function () {
            $.ajax({
                url: '/ajax/AjxHaberKaldir.aspx/HaberKaldir',
                dataType: 'json',
                type: 'POST',
                data:  "{'id': '<%=vtHaberID%>','islem':'kaldir'}",
                contentType: 'application/json; charset=utf-8',
                success: function (data) {
                    alert(data.d);
                    location.reload();
                }
            });
        });
    });
</script>

        <script type="text/javascript">
    $(document).ready(function () {
        $("#btnAktifEt").click(function () {
            $.ajax({
                url: '/ajax/AjxHaberKaldir.aspx/HaberKaldir',
                dataType: 'json',
                type: 'POST',
                data: "{'id': '<%=vtHaberID%>','islem':'aktifet'}",
                contentType: 'application/json; charset=utf-8',
                success: function (data) {
                    alert(data.d);
                    location.reload();

                }
            });
        });
    });
</script>

</asp:Content>
