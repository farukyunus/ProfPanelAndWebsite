<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="ProfHaberSite.Anasayfa" %>

<%@ Register Src="~/UserControl/UC_MansetUzeriHaber.ascx" TagPrefix="uc1" TagName="UC_MansetUzeriHaber" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">

        <uc1:UC_MansetUzeriHaber runat="server" id="UC_MansetUzeriHaber" />

        <div class="row">

            <div class="col-lg-8 mt-3">
                <!-- Swiper -->

                <div class="swip-anamanset">
                    <div class="swiper-container">
                        <div class="swiper-wrapper">

                            <div class="swiper-slide">
                                <div class="manset-title-left-center">65 yaş üzeri vatandaşlar, yaklaşık 2 aylık sokağa çıkma yasağının ardından saat 11 itibariyle dışarı çıktı</div>
                                <img src="https://foto.haberler.com/haber/2020/05/10/65-yas-uzeri-kimseler-2-ay-sonra-ilk-kez-sokaga-13206663_3355_amp.jpg"
                                    class="img-fluid" />
                            </div>
                            <div class="swiper-slide">
                                <img src="static/img/atm-ve-pos-cihazlarinda-corona-virusu-riski-kapak.jpg" class="img-fluid" /></div>
                            <div class="swiper-slide">
                                <img src="static/img/beypazari-shutterstock-2.jpg" class="img-fluid" /></div>
                            <div class="swiper-slide">
                                <img src="static/img/buyuk-bulusma-son-2.jpg" class="img-fluid" /></div>
                            <div class="swiper-slide">
                                <img src="static/img/cin-arastirma-reuters.jpg" class="img-fluid" /></div>
                            <div class="swiper-slide">
                                <img src="static/img/dornazzz.jpg" class="img-fluid" /></div>
                            <div class="swiper-slide">
                                <img src="static/img/dso.jpg" class="img-fluid" /></div>
                            <div class="swiper-slide">
                                <img src="static/img/duru-iha-manset.jpg" class="img-fluid" /></div>
                            <div class="swiper-slide">
                                <img src="static/img/guangzhou-evergrande-shutter-5.jpg" class="img-fluid" /></div>
                            <div class="swiper-slide">
                                <img src="static/img/ates-kara-dha-2.jpg" class="img-fluid" /></div>
                            <div id="sbes-1" class="swiper-slide">
                                <img src="static/img/ates-kara-dha-2.jpg" class="img-fluid" /></div>
                            <div id="sbes-2" class="swiper-slide">
                                <img src="static/img/atm-ve-pos-cihazlarinda-corona-virusu-riski-kapak.jpg" class="img-fluid" /></div>
                            <div id="sbes-3" class="swiper-slide">
                                <img src="static/img/beypazari-shutterstock-2.jpg" class="img-fluid" /></div>
                            <div id="sbes-4" class="swiper-slide">
                                <img src="static/img/buyuk-bulusma-son-2.jpg" class="img-fluid" /></div>
                            <div id="sbes-5" class="swiper-slide">
                                <img src="static/img/cin-arastirma-reuters.jpg" class="img-fluid" /></div>
                            <div id="sbes-6" class="swiper-slide">
                                <img src="static/img/guangzhou-evergrande-shutter-5.jpg" class="img-fluid" /></div>
                            <div id="sbes-7" class="swiper-slide">
                                <img src="static/img/ates-kara-dha-2.jpg" class="img-fluid" /></div>

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



        <div class="row mt-3">

            <div class="col-lg-12">
                <!-- Swiper -->
                <div class="swip-large-slider">
                    <div class="swiper-container test">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="lar-title">This card has supporting text below as a natural lead-in to additional content.</div>
                                <img src="https://i.sozcu.com.tr/wp-content/uploads/2020/04/29/surbannerr.jpg" class="img-fluid">
                            </div>
                            <div class="swiper-slide">
                                <div class="lar-title">This card has supporting text below as a natural lead-in to additional content.</div>
                                <img src="https://i.sozcu.com.tr/wp-content/uploads/2020/04/29/isvec-reuters-corona-1.jpg" class="img-fluid">
                            </div>
                            <div class="swiper-slide">
                                <div class="lar-title">This card has supporting text below as a natural lead-in to additional content.</div>
                                <img src="https://i.sozcu.com.tr/wp-content/uploads/2020/04/29/corona-ilac-reuters-1.jpg" class="img-fluid">
                            </div>
                            <div class="swiper-slide">
                                <div class="lar-title">This card has supporting text below as a natural lead-in to additional content.</div>
                                <img src="https://cdn-amk.sozcu.com.tr/amk-resimler/2016/06/uefa-banner.jpg" class="img-fluid">
                            </div>
                            <div class="swiper-slide">
                                <div class="lar-title">This card has supporting text below as a natural lead-in to additional content.</div>
                                <img src="https://cdn-amk.sozcu.com.tr/amk-resimler/2020/01/marius-sumudica-iha-gaziantep-banner.jpg" class="img-fluid">
                            </div>
                            <div class="swiper-slide">
                                <div class="lar-title">This card has supporting text below as a natural lead-in to additional content.</div>
                                <img src="https://i.sozcu.com.tr/wp-content/uploads/2020/04/29/corona-ilac-reuters-1.jpg" class="img-fluid">
                            </div>

                        </div>
                        <!-- Add Pagination -->
                        <div class="swiper-pagination"></div>

                    </div>
                </div>

            </div>
        </div>


        <!--GÜNDEM HABERLERİ-->

        <div class="row">
            <div class="col-lg-4">
                <div class="card-deck mt-3">
                    <div class="card br-close">
                        <img class="card-img-top br-close img-cvr" src="https://foto.haberler.com/manset/2020/05/03/barca-da-bir-donem-sona-eriyor-koronavirus_13185199_68_k.jpg" alt="Card image cap">
                        <div class="card-body">
                            <p class="card-text hd-cards">Barça'da bir dönem sona eriyor! Koronavirüs nedeniyle yollar ayrılıyor</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-4">
                <div class="card-deck mt-3">
                    <div class="card br-close">
                        <img class="card-img-top br-close img-cvr" src="https://foto.haberler.com/manset/2020/05/03/2-milyon-lira-odenerek-kentteki-veresiye_13185241_36_k.jpg" alt="Card image cap">
                        <div class="card-body">
                            <p class="card-text hd-cards">2 milyon lira ödenerek kentteki veresiye defterleri satın alındı</p>
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
        <!--GÜNDEM HABERLERİ END-->


        <div class="row mt-3">

            <div class="col-lg-12">
                <div class="arabaslik b-galeri">
                    Fotogaleri
                </div>

            </div>
        </div>
        <div class="row mt-3">
            <div class="col-lg-12">
                <!-- Swiper -->

                <div class="swiper-container-fg">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide fg-img">

                            <div class="fg-title fg-bg">İstanbul'da çakan şimşekler geceyi gündüze çevirdi</div>
                            <img class="img-fluid h-250" src="https://foto.haberler.com/galeri/2019/08/08/fenerbahce-cagliari-macinda-dikkat-ceken-detay-715418_8826_1_b.jpg" alt="Card image cap">
                        </div>

                        <div class="swiper-slide fg-img">

                            <div class="fg-title fg-bg">Aşk 101'in güzelleri güzeli Burcu öğretmeni paylaşımlarıyla sosyal medyayı sallıyor</div>
                            <img class="img-fluid h-250" src="https://foto.haberler.com/galeri/2020/05/02/guzellik-organlarinin-yerini-degistirdiler-iste-717726_3151_7_b.jpg"
                                alt="Card image cap">
                        </div>
                        <div class="swiper-slide fg-img">

                            <div class="fg-title fg-bg">Gagasından iç organlarına kadar her şeyiyle siyah olan özel tavuk: Ayam Cemani</div>
                            <img class="img-fluid h-250" src="https://foto.haberler.com/galeri/2020/05/02/gagasindan-ic-organlarina-kadar-her-seyiyle-siyah-717725_150_3_b.jpg"
                                alt="Card image cap">
                        </div>
                        <div class="swiper-slide fg-img">

                            <div class="fg-title fg-bg">Natural lead-in to additional content. To additional</div>
                            <img class="img-fluid h-250" src="https://cdn-amk.sozcu.com.tr/amk-resimler/2020/05/iecrop/depophotos_16678324_16_9_1588403107-480x270.jpg" alt="Card image cap">
                        </div>

                        <div class="swiper-slide fg-img">

                            <div class="fg-title fg-bg">This card has supporting text below as a natural lead-in to additional content.</div>
                            <img class="img-fluid h-250" src="https://cdn-amk.sozcu.com.tr/amk-resimler/2020/05/iecrop/depophotos_16678324_16_9_1588403107-480x270.jpg"
                                alt="Card image cap">
                        </div>

                        <div class="swiper-slide fg-img">

                            <div class="fg-title fg-bg">This card has supporting text below as a natural lead-in to additional content.</div>
                            <img class="img-fluid h-250" src="https://cdn-amk.sozcu.com.tr/amk-resimler/2020/05/iecrop/depophotos_16678324_16_9_1588403107-480x270.jpg"
                                alt="Card image cap">
                        </div>

                        <div class="swiper-slide fg-img">

                            <div class="fg-title fg-bg">This card has supporting text below as a natural lead-in to additional content.</div>
                            <img class="img-fluid h-250" src="https://cdn-amk.sozcu.com.tr/amk-resimler/2020/05/iecrop/depophotos_16678324_16_9_1588403107-480x270.jpg"
                                alt="Card image cap">
                        </div>

                    </div>

                    <div class="swiper-button-next np-col"></div>
                    <div class="swiper-button-prev np-col"></div>

                </div>

            </div>
        </div>




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
                                        <img src="static/img/bio-test.jpg" class="img-fluid img-hw">
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
                                        <img src="static/img/bio-test-2.jpg" class="img-fluid img-hw">
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
                                        <img src="static/img/bio-test.jpg" class="img-fluid img-hw">
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
                                        <img src="static/img/bio-test-2.jpg" class="img-fluid img-hw">
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
                                        <img src="static/img/bio-test.jpg" class="img-fluid img-hw">
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
                                        <img src="static/img/bio-test-2.jpg" class="img-fluid img-hw">
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
                                        <img src="static/img/bio-test.jpg" class="img-fluid img-hw">
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
                                        <img src="static/img/bio-test-2.jpg" class="img-fluid img-hw">
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
                                        <img src="static/img/bio-test.jpg" class="img-fluid img-hw">
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
    <script src="/static/js/swiper.min.js"></script>
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
