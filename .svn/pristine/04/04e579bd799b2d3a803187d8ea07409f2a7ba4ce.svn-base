<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Giris.aspx.cs" Inherits="HaberAdmin.PanelGiris.Giris" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Prof Haber Giriş Ekranı</title>
    <link href="/static/css/styles.css" rel="stylesheet" />
         <script src="https://code.jquery.com/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="/static/js/scripts.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js" crossorigin="anonymous"></script>
</head>
    <body class="bg-primary">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">ProfHaber Yetkili Girişi</h3></div>
                                    <div class="card-body">
                                        <form id="KullaniciGonder" method="post" runat="server">
                                            <div class="form-group"><label class="small mb-1" for="inputEmailAddress">Kullancı adı:</label><input class="form-control py-4" id="kullanici_adi" type="text" placeholder="Kullanıcı Adınız" runat="server" /></div>
                                            <div class="form-group"><label class="small mb-1" for="inputPassword">Şifre:</label><input class="form-control py-4" id="sifre" type="password" placeholder="Şifreniz" runat="server" /></div>
                                            <div class="form-group">
                                                <div class="custom-control custom-checkbox"><input class="custom-control-input" id="rememberPasswordCheck" type="checkbox" /><label class="custom-control-label" for="rememberPasswordCheck">Remember password</label></div>
                                            </div>
                                            <div class="form-group d-flex align-items-center justify-content-between mt-4 mb-0"><a class="small" href="password.html">Forgot Password?</a><asp:Button ID="btn_giris" runat="server" Text="Giriş Yap" CssClass="btn btn-primary" OnClick="btn_giris_Click" /></div>
                                        <asp:Literal ID="ltrl_error" runat="server"></asp:Literal>
                                        </form>
                                    </div>
                                    <div class="card-footer text-center">
                                        <div class="small"><a href="register.html">Need an account? Sign up!</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            <div id="layoutAuthentication_footer">
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2019</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>

     <script src="https://m.haberler.com/static/assets/js/jquery.validate.min.js"></script>

    <script>
        $(document).ready(function () {

            $.validator.setDefaults({
                submitHandler: function () {
                    ("#KullaniciGonder").submit();
                }
            });

            $('#KullaniciGonder').validate({
                rules: {
                    kullanici_adi: {
                        required: true,
                        minlength: 6,
                        maxlength: 15,
                    },
                    sifre: {
                        required: true,
                        minlength: 6,
                        maxlength: 15,
                    },
                   
                    //,
                    //ContentPlaceHolder1_CKEditorControl1: {
                    //    required: true,
                    //    minlength: 2,
                    //}
                },

                messages: {
                    kullanici_adi: {
                        required: 'Kullanıcı adını boş bırakamazsınız.',
                        minlength: 'Kullanıcı adınız en az 6 karakter olmalı',
                        maxlength: '15 Karakterden fazla girmeyin',

                    },
                    sifre: {
                        required: 'Şifre alanı boş bırakılamaz.',
                        minlength: 'Şifreniz en az 6 karakter olmalı',
                        maxlength: '15 Karakterden fazla girmeyin',
                    },
                   
                    //ContentPlaceHolder1_CKEditorControl1: {
                    //     required: 'Haber içeriğini giriniz. ',
                    //    minlength: 'Haber içeriğini düzgün gir',
                    //},

                }
            });
        })

    </script>

    </body>
</html>

