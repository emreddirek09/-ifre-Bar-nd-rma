<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="FirmaEkle.aspx.cs" Inherits="SifreTutma.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" id="main-stylesheet" data-version="1.1.0" href="styles/shards-dashboards.1.1.0.min.css">
    <link rel="stylesheet" href="styles/extras.1.1.0.min.css">
     <script src="https://connect.facebook.net/en_US/all.js?hash=53f1652053bbb8a0cd150325edc640a0&amp;ua=modern_es6" async="" crossorigin="anonymous"></script><script type="text/javascript" async="" src="https://platform.twitter.com/widgets.js"></script><script id="facebook-jssdk" src="https://connect.facebook.net/en_US/all.js#xfbml=1"></script><script async="" defer="" src="https://buttons.github.io/buttons.js"></script>
    
     <%-- <script type="text/javascript">
          function güncelle_popup() {
              $('#güncelle_modal').modal('show');
          }
    </script>

     <div class="modal fade" id="güncelle_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">

                        <div class="form-group">
                            <label for="firstname" class="col-md-12">Firma Adı  </label>
                            <input type="text" class="form-control" id="firma_adi_popup" runat="server">
                        </div>
                          <div class="form-group">
                            <label for="password" class="col-md-12">Telefon  </label>
                            <input type="text" id="iletisim_popup" maxlength="10" class="form-control" runat="server">
                         </div>

                         <asp:Button ID="PopUpGüncelle" class="btn btn-info" runat="server" Text="Gönder" OnClick="PopUpGüncelle_Click1"/>
                    </div>
                </div>
         </div>--%>

                    
    <div class="col-xs-12">
        <li class="list-group-item p-3 bg-default">
            <div class="text-center">
                <table class="table bg-light text-center">
                    <tr>
                        <td>
                            <label class=" align-content-center text-black">Firma Adı  :</label>
                        </td>
                        <td>
                            
                            <input type="text" id="firAdiText" class="container" width="35" height="176" runat="server">

                        </td>
                        <td>

                            <label class=" align-content-center text-black">Firma Telefon  :</label>
                        </td>

                        <td>
                            
                            <input type="text" id="firTelText" maxlength="10" placeholder="###-###-####" class="container" width="35" height="176" runat="server">
                        </td>
                           
                    </tr>
                </table>
                <asp:Button type="submit" runat="server" CssClass="bg-secondary block text-white " Width="120px" Height="40px" Text="Ekle" OnClick="firmaEkle_Click" />
                <asp:Button ID="Güncelle" type="submit" runat="server" CssClass="bg-secondary block text-white " Width="120px" Height="40px" Text="GÜNCELLE" OnClick="Güncelle_Click" />

            </div>
        </li>
    </div>
    <div class="text-center">
        <asp:Label ID="Label3" runat="server"></asp:Label>
    </div>   
      <li class="list-group-item p-3">
        <div class="col-xs-12">
            <asp:HiddenField ID="sec_id_HiddenField1" runat="server" />
        <asp:Repeater ID="Repeater1" runat="server">
            <HeaderTemplate>
                <table class="table  table-striped text-center">
                    <thead class="thead-bg-info">

<%--                        <th class="  bg-secondary block text-white">SEÇ </th>--%>
                    <%--    <th class="  bg-secondary block text-white">Firma Id</th>--%>
                        <th class="  bg-secondary block text-white">Firma Adı</th>
                        <th class="  bg-secondary block text-white">Firma Telefon</th>
                        <th class="  bg-secondary block text-white">Güncelle</th>
                        <th class="  bg-secondary block text-white">SİL</th>

                    </thead>
            </HeaderTemplate>
            <ItemTemplate>
                <tbody>
                    <tr>
<%--                        <td>
                            <asp:LinkButton ID="sec" runat="server" OnClick="sec_Click" CommandArgument='<%#Eval("ID") %>'>✓</asp:LinkButton>
                        </td>--%>
                        <%--<td>
                            <asp:Label ID="Label2" runat="server" Text='<%#Eval("ID") %> '> </asp:Label>
                        </td>--%>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("Firma_Adi") %> '> </asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label7" runat="server" Text='<%#Eval("Firma_Telefon")%>'> </asp:Label>
                        </td>
                         <td>
                            <asp:LinkButton ID="Güncelle" type="submit" runat="server" CssClass=" fa fa-refresh" OnClick="Güncelle_Click1" CommandArgument='<%#Eval("Id") %>'>Güncelle</asp:LinkButton>

                            </td>
                        <td>
                            <asp:LinkButton ID="Sil" runat="server" title="Silmek İçin Tıklayınız" CssClass="fa fa-trash text-danger text" OnClick="LinkButton3_Click2" OnClientClick="return confirm('Silmek istiyormusunuz ?')" CommandArgument='<%#Eval("Id") %>'><span style="color:red;"></span></asp:LinkButton>
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

   
</asp:Content>

