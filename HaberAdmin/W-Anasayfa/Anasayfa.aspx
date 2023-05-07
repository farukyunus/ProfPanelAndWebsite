<%@ Page Title="" Language="C#" MasterPageFile="~/W-SiteMaster.Master" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="HaberAdmin.W_Anasayfa.Anasayfa" %>

<%@ Register Src="~/W-WUC/UC_MansetUzeriHaber.ascx" TagPrefix="uc1" TagName="UC_MansetUzeriHaber" %>
<%@ Register Src="~/W-WUC/UC_MansetAltiHaber.ascx" TagPrefix="uc1" TagName="UC_MansetAltiHaber" %>
<%@ Register Src="~/W-WUC/UC_SurmansetHaber.ascx" TagPrefix="uc1" TagName="UC_SurmansetHaber" %>
<%@ Register Src="~/W-WUC/UC_AnasayfaKategoriler.ascx" TagPrefix="uc1" TagName="UC_AnasayfaKategoriler" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <%if (!mobil)
            {%>
        <uc1:UC_MansetUzeriHaber runat="server" ID="UC_MansetUzeriHaber" />
        <%} %>

        <!--MANSET-->
        <div class="row">
            <div class="col-lg-8 mt-3">
                <!-- Swiper -->
                <div class="swip-anamanset">
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            <%foreach (var item in Anamanset)
                                {%>
                            <div class="swiper-slide">
                                <a href="<%=item.Haber_Url %>" title="<%=item.HaberBaslik %>">
                                    <div class="manset-title-left-center"><%= !string.IsNullOrEmpty(item.MansetBaslik) ? item.MansetBaslik : item.HaberBaslik  %></div>
                                    <img src="<%= !string.IsNullOrEmpty(item.HaberMansetResimUrl) ? item.HaberMansetResimUrl : item.HaberResimUrl  %>"
                                        class="img-fluid img-cvr-mnst" alt="<%=item.HaberBaslik %>"/>
                                </a>
                            </div>
                            <%} %>
                        </div>
                        <!-- Add Pagination -->
                        <div class="swiper-pagination"></div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="manset-sag-reklam mt-3">
                </div>
            </div>
        </div>
        <!--MANSET END-->

        <%if (mobil)
            {%>
        <uc1:UC_MansetUzeriHaber runat="server" ID="UC_MansetUzeriHaber1" />
        <%} %>
        <uc1:UC_MansetAltiHaber runat="server" ID="UC_MansetAltiHaber" />
        <uc1:UC_SurmansetHaber runat="server" ID="UC_SurmansetHaber" />
        <uc1:UC_AnasayfaKategoriler runat="server" ID="UC_AnasayfaKategoriler" />



        <!--SPOR HABERLERİ-->
        <div class="row mt-3">

            <div class="col-lg-12">
                <div class="arabaslik b-spor">
                    Spor
                </div>

            </div>
        </div>

        <div class="row">
            <div class="col-lg-4">
                <div class="card-deck mt-3">
                    <div class="card br-close">
                        <img class="card-img-top br-close img-cvr" src="https://cdn-amk.sozcu.com.tr/amk-resimler/2020/05/iecrop/depophotos_16678324_16_9_1588403107-480x270.jpg" alt="Card image cap">
                        <div class="card-body">
                            <p class="card-text hd-cards">This card has supporting text below as a natural lead-in to additional content.</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-4">
                <div class="card-deck mt-3">
                    <div class="card br-close">
                        <img class="card-img-top br-close img-cvr" src="https://cdn-amk.sozcu.com.tr/amk-resimler/2020/05/iecrop/depophotos_16678324_16_9_1588403107-480x270.jpg" alt="Card image cap">
                        <div class="card-body">
                            <p class="card-text hd-cards">This card has supporting text below as a natural lead-in to additional content.</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-4">
                <div class="card-deck mt-3">
                    <div class="card br-close">
                        <img class="card-img-top br-close img-cvr" src="https://cdn-amk.sozcu.com.tr/amk-resimler/2020/05/iecrop/depophotos_16678324_16_9_1588403107-480x270.jpg" alt="Card image cap">
                        <div class="card-body">
                            <p class="card-text hd-cards">This card has supporting text below as a natural lead-in to additional content.</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-4">
                <div class="card-deck mt-3">
                    <div class="card br-close">
                        <img class="card-img-top br-close img-cvr" src="https://cdn-amk.sozcu.com.tr/amk-resimler/2020/05/iecrop/depophotos_16678324_16_9_1588403107-480x270.jpg" alt="Card image cap">
                        <div class="card-body">
                            <p class="card-text hd-cards">This card has supporting text below as a natural lead-in to additional content.</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-4">
                <div class="card-deck mt-3">
                    <div class="card br-close">
                        <img class="card-img-top br-close img-cvr" src="https://cdn-amk.sozcu.com.tr/amk-resimler/2020/05/iecrop/depophotos_16678324_16_9_1588403107-480x270.jpg" alt="Card image cap">
                        <div class="card-body">
                            <p class="card-text hd-cards">This card has supporting text below as a natural lead-in to additional content.</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-4">
                <div class="card-deck mt-3">
                    <div class="card br-close">
                        <img class="card-img-top br-close img-cvr" src="https://cdn-amk.sozcu.com.tr/amk-resimler/2020/05/iecrop/depophotos_16678324_16_9_1588403107-480x270.jpg" alt="Card image cap">
                        <div class="card-body">
                            <p class="card-text hd-cards">This card has supporting text below as a natural lead-in to additional content.</p>
                        </div>
                    </div>
                </div>
            </div>


        </div>
        <!--SPOR HABERLERİ END-->



        <!--YAZARLAR-->
        <div class="row mt-3">

            <div class="col-lg-12">
                <div class="arabaslik b-yazar">
                    Yazarlar
                </div>

            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <div class="swip-yazar-slider">
                    <div class="swiper-container-2">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="yazar-kutu">
                                    <div class="yazar-img">
                                        <img src="/W-static/img/bio-test.jpg" class="img-fluid img-hw">
                                    </div>
                                    <div class="yzr-ad">Faruk Şişman / Avukat </div>
                                    <div class="yzr-baslik">
                                        <p>Koronadan bile siyasi rant peşinde bu ibneler</p>
                                        <br>
                                    </div>
                                </div>
                            </div>

                            <div class="swiper-slide">
                                <div class="yazar-kutu">
                                    <div class="yazar-img">
                                        <img src="/W-static/img/bio-test-2.jpg" class="img-fluid img-hw">
                                    </div>
                                    <div class="yzr-ad">Faruk Şişman / Sağlıkçı</div>
                                    <div class="yzr-baslik">
                                        <p>Koronadan bile siyasi rant peşinde bu ibneler</p>
                                    </div>
                                </div>
                            </div>


                            <div class="swiper-slide">
                                <div class="yazar-kutu">
                                    <div class="yazar-img">
                                        <img src="/W-static/img/bio-test.jpg" class="img-fluid img-hw">
                                    </div>
                                    <div class="yzr-ad">Faruk Şişman / İş Adamı</div>
                                    <div class="yzr-baslik">
                                        <p>Koronadan bile siyasi rant peşinde bu ibneler</p>
                                    </div>
                                </div>
                            </div>

                            <div class="swiper-slide">
                                <div class="yazar-kutu">
                                    <div class="yazar-img">
                                        <img src="/W-static/img/bio-test-2.jpg" class="img-fluid img-hw">
                                    </div>
                                    <div class="yzr-ad">Faruk Şişman</div>
                                    <div class="yzr-baslik">
                                        <p>Koronadan bile siyasi rant peşinde bu ibneler</p>
                                    </div>
                                </div>
                            </div>

                            <div class="swiper-slide">
                                <div class="yazar-kutu">
                                    <div class="yazar-img">
                                        <img src="/W-static/img/bio-test.jpg" class="img-fluid img-hw">
                                    </div>
                                    <div class="yzr-ad">Faruk Şişman</div>
                                    <div class="yzr-baslik">
                                        <p>Koronadan bile siyasi rant peşinde bu ibneler</p>
                                    </div>
                                </div>
                            </div>

                            <div class="swiper-slide">
                                <div class="yazar-kutu">
                                    <div class="yazar-img">
                                        <img src="/W-static/img/bio-test-2.jpg" class="img-fluid img-hw">
                                    </div>
                                    <div class="yzr-ad">Faruk Şişman</div>
                                    <div class="yzr-baslik">
                                        <p>Koronadan bile siyasi rant peşinde bu ibneler</p>
                                    </div>
                                </div>
                            </div>

                            <div class="swiper-slide">
                                <div class="yazar-kutu">
                                    <div class="yazar-img">
                                        <img src="/W-static/img/bio-test.jpg" class="img-fluid img-hw">
                                    </div>
                                    <div class="yzr-ad">Faruk Şişman</div>
                                    <div class="yzr-baslik">
                                        <p>Koronadan bile siyasi rant peşinde bu ibneler</p>
                                    </div>
                                </div>
                            </div>



                            <div class="swiper-slide">
                                <div class="yazar-kutu">
                                    <div class="yazar-img">
                                        <img src="/W-static/img/bio-test-2.jpg" class="img-fluid img-hw">
                                    </div>
                                    <div class="yzr-ad">Faruk Şişman</div>
                                    <div class="yzr-baslik">
                                        <p>Koronadan bile siyasi rant peşinde bu ibneler</p>
                                    </div>
                                </div>
                            </div>

                            <div class="swiper-slide">
                                <div class="yazar-kutu">
                                    <div class="yazar-img">
                                        <img src="/W-static/img/bio-test.jpg" class="img-fluid img-hw">
                                    </div>
                                    <div class="yzr-ad">Faruk Şişman</div>
                                    <div class="yzr-baslik">
                                        <p>Koronadan bile siyasi rant peşinde bu ibneler</p>
                                    </div>
                                </div>
                            </div>




                        </div>

                        <div class="swiper-button-next npy-col"></div>
                        <div class="swiper-button-prev npy-col"></div>
                    </div>
                </div>
            </div>

        </div>

        <!--YAZARLAR END-->


        <!--EKONOMİ HABERLERİ-->
        <div class="row mt-3">

            <div class="col-lg-12">
                <div class="arabaslik b-ekonomi">
                    Ekonomi
                </div>

            </div>
        </div>

        <div class="row">
            <div class="col-lg-4">
                <div class="card-deck mt-3">
                    <div class="card br-close">
                        <img class="card-img-top br-close img-cvr" src="https://i.sozcu.com.tr/wp-content/uploads/2020/05/02/iecrop/shutterstock_582043573-1_16_9_1588423704-480x270.jpg" alt="Card image cap">
                        <div class="card-body">
                            <p class="card-text hd-cards">This card has supporting text below as a natural lead-in to additional content.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="card-deck mt-3">
                    <div class="card br-close">
                        <img class="card-img-top br-close img-cvr" src="https://i.sozcu.com.tr/wp-content/uploads/2020/05/02/iecrop/shutterstock_582043573-1_16_9_1588423704-480x270.jpg" alt="Card image cap">
                        <div class="card-body">
                            <p class="card-text hd-cards">This card has supporting text below as a natural lead-in to additional content.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="card-deck mt-3">
                    <div class="card br-close">
                        <img class="card-img-top br-close img-cvr" src="https://i.sozcu.com.tr/wp-content/uploads/2020/05/02/iecrop/shutterstock_582043573-1_16_9_1588423704-480x270.jpg" alt="Card image cap">
                        <div class="card-body">
                            <p class="card-text hd-cards">This card has supporting text below as a natural lead-in to additional content.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="card-deck mt-3">
                    <div class="card br-close">
                        <img class="card-img-top br-close img-cvr" src="https://i.sozcu.com.tr/wp-content/uploads/2020/05/02/iecrop/shutterstock_582043573-1_16_9_1588423704-480x270.jpg" alt="Card image cap">
                        <div class="card-body">
                            <p class="card-text hd-cards">This card has supporting text below as a natural lead-in to additional content.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="card-deck mt-3">
                    <div class="card br-close">
                        <img class="card-img-top br-close img-cvr" src="https://i.sozcu.com.tr/wp-content/uploads/2020/05/02/iecrop/shutterstock_582043573-1_16_9_1588423704-480x270.jpg" alt="Card image cap">
                        <div class="card-body">
                            <p class="card-text hd-cards">This card has supporting text below as a natural lead-in to additional content.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="card-deck mt-3">
                    <div class="card br-close">
                        <img class="card-img-top br-close img-cvr" src="https://i.sozcu.com.tr/wp-content/uploads/2020/05/02/iecrop/shutterstock_582043573-1_16_9_1588423704-480x270.jpg" alt="Card image cap">
                        <div class="card-body">
                            <p class="card-text hd-cards">This card has supporting text below as a natural lead-in to additional content.</p>
                        </div>
                    </div>
                </div>
            </div>





        </div>
        <!--EKONOMİ HABERLERİ END-->


        <!--EKONOMİ HABERLERİ-->
        <div class="row mt-3">

            <div class="col-lg-12">
                <div class="arabaslik b-emlak">
                    Emlak
                </div>

            </div>
        </div>

        <div class="row">
            <div class="col-lg-4">
                <div class="card-deck mt-3">
                    <div class="card br-close">
                        <img class="card-img-top br-close img-cvr" src="https://i.sozcu.com.tr/wp-content/uploads/2020/05/01/iecrop/avm-foto-shutterstock_16_9_1584182756_16_9_1588374259-480x270.jpg" alt="Card image cap">
                        <div class="card-body">
                            <p class="card-text hd-cards">This card has supporting text below as a natural lead-in to additional content.</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-4">
                <div class="card-deck mt-3">
                    <div class="card br-close">
                        <img class="card-img-top br-close img-cvr" src="https://i.sozcu.com.tr/wp-content/uploads/2020/05/01/iecrop/avm-foto-shutterstock_16_9_1584182756_16_9_1588374259-480x270.jpg" alt="Card image cap">
                        <div class="card-body">
                            <p class="card-text hd-cards">This card has supporting text below as a natural lead-in to additional content.</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-4">
                <div class="card-deck mt-3">
                    <div class="card br-close">
                        <img class="card-img-top br-close img-cvr" src="https://i.sozcu.com.tr/wp-content/uploads/2020/05/01/iecrop/avm-foto-shutterstock_16_9_1584182756_16_9_1588374259-480x270.jpg" alt="Card image cap">
                        <div class="card-body">
                            <p class="card-text hd-cards">This card has supporting text below as a natural lead-in to additional content.</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-4">
                <div class="card-deck mt-3">
                    <div class="card br-close">
                        <img class="card-img-top br-close img-cvr" src="https://i.sozcu.com.tr/wp-content/uploads/2020/05/01/iecrop/avm-foto-shutterstock_16_9_1584182756_16_9_1588374259-480x270.jpg" alt="Card image cap">
                        <div class="card-body">
                            <p class="card-text hd-cards">This card has supporting text below as a natural lead-in to additional content.</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-4">
                <div class="card-deck mt-3">
                    <div class="card br-close">
                        <img class="card-img-top br-close img-cvr" src="https://i.sozcu.com.tr/wp-content/uploads/2020/05/01/iecrop/avm-foto-shutterstock_16_9_1584182756_16_9_1588374259-480x270.jpg" alt="Card image cap">
                        <div class="card-body">
                            <p class="card-text hd-cards">This card has supporting text below as a natural lead-in to additional content.</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-4">
                <div class="card-deck mt-3">
                    <div class="card br-close">
                        <img class="card-img-top br-close img-cvr" src="https://i.sozcu.com.tr/wp-content/uploads/2020/05/01/iecrop/avm-foto-shutterstock_16_9_1584182756_16_9_1588374259-480x270.jpg" alt="Card image cap">
                        <div class="card-body">
                            <p class="card-text hd-cards">This card has supporting text below as a natural lead-in to additional content.</p>
                        </div>
                    </div>
                </div>
            </div>







        </div>
        <!--EKONOMİ HABERLERİ END-->

        <div class="row mt-3">

            <div class="col-lg-12">

                <div class="alert alert-success" role="alert">
                    <h4 class="alert-heading">Well done!</h4>
                    <p>Aww yeah, you successfully read this important alert message. This example text is going to run a bit longer so that you can see how spacing within an alert works with this kind of content.</p>
                    <hr>
                    <p class="mb-0">Whenever you need to, be sure to use margin utilities to keep things nice and tidy.</p>
                </div>
            </div>
        </div>



    </div>
    <script src="/W-static/js/swiper.min.js"></script>
    <script>
        var swiper = new Swiper('.swiper-container', {
            pagination: {
                el: '.swiper-pagination',
                clickable: true,
                renderBullet: function (index, className) {
                    return '<span class="' + className + '">' + (index + 1) + '</span>';
                },
            },
        });

        $('.swiper-pagination-bullet').hover(function () {
            $(this).trigger("click");
        });
    </script>
    <script>
        var swiper = new Swiper('.swiper-container-2', {
            slidesPerView: 3,
            spaceBetween: 30,
            freeMode: true,
            pagination: {
                el: '.swiper-pagination-2',
                clickable: true,
            },

            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
        });
    </script>

    <!-- Initialize Swiper -->
    <script>
        var swiper = new Swiper('.swiper-container-fg', {
            slidesPerView: 'auto',
            spaceBetween: 30,

            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },

            // autoplay: {
            //     delay: 3500,
            //     disableOnInteraction: false,
            // },

        });

        // $(".swiper-container-fg").hover(function() {
        //     (this).swiper.autoplay.stop();
        // }, function() {
        //     (this).swiper.autoplay.start();
        // });
    </script>
</asp:Content>
