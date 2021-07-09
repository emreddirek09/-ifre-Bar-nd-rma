<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Kullanicilar.aspx.cs" Inherits="SifreTutma.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <meta name="description" content="A high-quality &amp; free Bootstrap admin dashboard template pack that comes with lots of templates and components.">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="styles/all.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" id="main-stylesheet" data-version="1.1.0" href="styles/shards-dashboards.1.1.0.min.css">
    <link rel="stylesheet" href="styles/extras.1.1.0.min.css">
    <div class="col-xs-12  ">
        <!--Burada da butona tıklayınca gelecek olan  Bootstrap modal ı ekliyoruz -->
        
    <script type="text/javascript">
        function güncelle_popup() {
            $('#güncelle_modal').modal('show');
        }
    </script>
        <div class="modal fade" id="güncelle_modal" tabindex="-1" role="dialog"
            aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">

                    <div class="form-group">
                        <label for="firstname" class="col-md-12">Adı  </label>
                        <input type="text" class="form-control" id="adi_popup" runat="server">
                    </div>


                    <div class="form-group">
                        <label for="lastname" class="col-md-12"> Soyadı  </label>
                        <input type="text" class="form-control" id="soyadi_popup" runat="server">
                    </div>


                    <div class="form-group">
                        <label for="emailaddress" class="col-md-12">E-Posta </label>
                        <input type="email" class="form-control" runat="server" id="e_posta_popup" placeholder="örnek@gmail.com ">
                    </div>

                     <div class="form-group">
                        <label for="emailaddress" class="col-md-12">Adres </label>
                        <input type="text" class="form-control" runat="server" id="adres_popup">
                    </div>


                    <div class="form-group">
                        <label for="password" class="col-md-12">Telefon  </label>
                        <input type="text" id="iletisim_popup" maxlength="10" class="form-control" runat="server">
                    </div>


                    <div class="form-group">
                        <label class="col-md-12">Statü </label>
                        <asp:TextBox class="form-control" ID="statu_popup" runat="server"></asp:TextBox>
                    </div>


                    <div class="form-group">
                        <label class="col-md-12"> Şehir  </label>
                        <asp:TextBox class="form-control" ID="sehir_popup" runat="server"></asp:TextBox>
                    </div>


                    <asp:Button ID="PopUpGüncelle" class="btn btn-info" runat="server" Text="Gönder" OnClick="PopUpGüncelle_Click1" />

                </div>

            </div>
        </div>
    </div>


    <li class="list-group-item p-3">
        
        <div class="col-xs-12">
            <%--     <div class="w3_hs_bottom bg-light">--%> 
            <asp:HiddenField ID="sec_id_HiddenField1" runat="server" />
            <asp:Repeater ID="Repeater1" runat="server">
                <HeaderTemplate>
                    <table class="table table-striped table-bordered table-hover text-center">
                        <thead>
                            
<%--                            <th class="  bg-secondary text-white">ID</th>--%>
                            <th class="  bg-secondary text-white">Adı</th>
                            <th class="  bg-secondary text-white"> Soyadı </th>
                            <th class="  bg-secondary text-white">Kullanıcı Adı</th>
                            <th class="  bg-secondary text-white">Statü</th>
                            <th class="  bg-secondary text-white">E_Posta</th>
                            <th class="  bg-secondary text-white">Adres</th>
                            <th class="  bg-secondary text-white">Şehir</th>
                            <th class="  bg-secondary text-white">İletişim</th>
                            <th class="  bg-secondary text-white">Kayıt Tarihi</th>
                            <th class="  bg-secondary text-white">Güncelle</th>
                            <th class="  bg-secondary text-white">Sil</th>

                        </thead>
                </HeaderTemplate>
                <ItemTemplate>
                    <tbody>
                        <tr>
                            <%--<td>
                                <asp:Label ID="Label3" runat="server" Text='<%#Eval("ID") %> '> </asp:Label>
                            </td>--%>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text='<%#Eval("Adi") %> '> </asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text='<%#Eval("Soyadi") %> '> </asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text='<%#Eval("Kullanici_Adi") %> '> </asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label5" runat="server" Text='<%#Eval("Statu") %> '> </asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label6" runat="server" Text='<%#Eval("E_Posta")%>'> </asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label7" runat="server" Text='<%#Eval("Adres")%>'> </asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label8" runat="server" Text='<%#Eval("Sehir")%>'> </asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label10" runat="server" Text='<%#Eval("iletisim")%>'> </asp:Label>                            

                            </td>
                            <td>
                               <asp:Label ID="Label9" runat="server" Text='<%#Eval("Kayit_Tarihi")%>'> </asp:Label>
                            </td>
                           <td>
                            <asp:LinkButton ID="Güncelle" type="submit" runat="server" CssClass=" fa fa-refresh" OnClick="Güncelle_Click" CommandArgument='<%#Eval("Id") %>'>Güncelle</asp:LinkButton>

                            </td>
                            <td>
                                <asp:LinkButton ID="sil" runat="server" title="Silmek İçin Tıklayınız" CssClass="fa fa-trash" OnClick="sil_Click" OnClientClick="return confirm('Silmek istiyormusunuz ?')" CommandArgument='<%#Eval("Id") %>'></asp:LinkButton>
                            </td>

                        </tr>
                    </tbody>
                </ItemTemplate>

                <FooterTemplate>
                    </table>
                </FooterTemplate>

            </asp:Repeater>
        </div>

    </li>

    <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js"></script>
    <script src="https://unpkg.com/shards-ui@latest/dist/js/shards.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Sharrre/2.0.1/jquery.sharrre.min.js"></script>

    <script src="scripts/extras.1.1.0.min.js"></script>
    <script src="scripts/shards-dashboards.1.1.0.min.js"></script>
</asp:Content>
