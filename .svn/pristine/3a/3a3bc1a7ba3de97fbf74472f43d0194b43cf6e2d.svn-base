<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HaberAdmin.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Anasayfa Admin</title>
    <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
    <script src="/static/assets/demo/datatables-demo.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid">
                <h1 class="mt-4">Ana Sayfa</h1>
             <%--   <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item active">Dashboard</li>
                </ol>--%>
                <div class="row">
                    <div class="col-xl-3 col-md-6">
                        <div class="card bg-primary text-white mb-4">
                            <div class="card-body">Primary Card</div>
                            <div class="card-footer d-flex align-items-center justify-content-between">
                                <a class="small text-white stretched-link" href="#">View Details</a>
                                <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-md-6">
                        <div class="card bg-warning text-white mb-4">
                            <div class="card-body">Warning Card</div>
                            <div class="card-footer d-flex align-items-center justify-content-between">
                                <a class="small text-white stretched-link" href="#">View Details</a>
                                <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-md-6">
                        <div class="card bg-success text-white mb-4">
                            <div class="card-body">Success Card</div>
                            <div class="card-footer d-flex align-items-center justify-content-between">
                                <a class="small text-white stretched-link" href="#">View Details</a>
                                <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-md-6">
                        <div class="card bg-danger text-white mb-4">
                            <div class="card-body">Danger Card</div>
                            <div class="card-footer d-flex align-items-center justify-content-between">
                                <a class="small text-white stretched-link" href="#">View Details</a>
                                <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <%--<div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header"><i class="fas fa-chart-area mr-1"></i>Area Chart Example</div>
                                    <div class="card-body"><canvas id="myAreaChart" width="100%" height="40"></canvas></div>
                                </div>
                            </div>--%>
                    <%--<div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header"><i class="fas fa-chart-bar mr-1"></i>Bar Chart Example</div>
                                    <div class="card-body"><canvas id="myBarChart" width="100%" height="40"></canvas></div>
                                </div>
                            </div>--%>
                </div>
                <div class="card mb-4">
                    <div class="card-header"><i class="fas fa-table mr-1"></i>Son eklenen haberler</div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                    <tr class="bg-dark text-white">
                                        <th><img src="/static/icons/update.png" width="20" height="20"/></th>
                                        <th>Başlık</th>
                                        <th>Konum</th>
                                        <th>Durum</th>
                                    </tr>
                                </thead>
                               <%-- <tfoot>
                                    <tr>
                                        <th><img src="static/icons/update.png" width="25" height="25"/></th>
                                        <th>ID</th>
                                        <th>Başlık</th>
                                        <th>Konum</th>
                                        <th>Aktif</th>
                                    </tr>
                                </tfoot>--%>
                                <tbody>
                                    <asp:Repeater ID="Rptr_Ana_Liste" runat="server">
                                        <ItemTemplate>
                                                <tr>
                                                    <td width="1%">
                                                        <a href="/Haberler/HaberEkle.aspx?HaberAra=<%# Eval("id") %>">
                                                        <img src="/static/icons/edit.png" width="20" height="20" title="Düzenle - <%# Eval("HaberBaslik") %>"/>
                                                        </a>
                                                    </td>
                                                    <td width="20%"><%# Eval("HaberBaslik") %></td>
                                                    <td width="1%"><%# Eval("HaberKonum") %></td>
                                                    <td width="1%"><%# HaberAdmin.Codes.Helper.ImgSec_Durum(Eval("Aktif").ToString())%></td>
                                                    
                                                </tr>


                                        </ItemTemplate>
                                    </asp:Repeater>



                                </tbody>
                            </table>

                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>


</asp:Content>
