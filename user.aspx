<%@ Page Title="" Language="C#" MasterPageFile="~/MasterUser.Master" AutoEventWireup="true" CodeBehind="user.aspx.cs" Inherits="SifreTutma.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <meta name="description" content="A high-quality &amp; free Bootstrap admin dashboard template pack that comes with lots of templates and components.">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="styles/all.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" id="main-stylesheet" data-version="1.1.0" href="styles/shards-dashboards.1.1.0.min.css">
    <link rel="stylesheet" href="styles/extras.1.1.0.min.css">

    <script type="text/javascript">
        function showModal(password) {
            const UIModalBody = document.getElementById('hashedPassword');
            UIModalBody.innerText = password;
            $("#exampleModalCenter").modal('show');
        }
    </script>

        <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document" data-toggle="modal" data-target="#exampleModalCenter">
                <div class="modal-content text-center">

                    <div class="modal-header text-center">
                        <h6 class="modal-title" id="exampleModalLongTitle">GÖRÜNTÜLENEN ŞİFRE</h6>
                    </div>
                    <div class="modal-body text-center" id="hashedPassword"></div>
                    <div class="modal-footer">
                        <asp:Button ID="Button1" runat="server" Text="Kapat" class="btn btn-info btn-sm  close"  date-dismiss="modal"/>                   
                    </div>
                </div>
            </div>
        </div>


    <div class="row text-center">
            <div class="col" style="text-align: center;">           
            <label class="text-black">Bölüm Seç  :</label>  
            <asp:DropDownList ID="DropDownList1" runat="server"  class="btn btn-outline-secondary btn-lg dropdown-toggle" Height="50px" Width="250">
            <asp:ListItem Enabled="false">Seçiniz</asp:ListItem></asp:DropDownList>    
            <asp:Button ID="BölümGetir" type="submit" runat="server" CssClass="bg-secondary block text-white " Width="120px" Height="40px" Text="GETİR" OnClick="BölümGetir_Click" />

          </div>        
    </div>


            
    <div class="col-xs-12">
            <li class="list-group-item p-3">
            
                <asp:Repeater ID="Repeater1" runat="server">
                    <HeaderTemplate>
                        <table class="table table-bordered table-striped text-center">
                            <thead class="thead-bg-gray">
                                <%--<th class=" bg-secondary block text-white">
                                    Firma Id</t>--%>
                                <th class=" bg-secondary block text-white">
                                Firma Türü</t>
                        <th class=" bg-secondary block text-white">Kullanıcı Adı</th>
                                
                                <th class=" bg-secondary block text-white">Ip</th>
                                <th class=" bg-secondary block text-white">Göster</th>
                            </thead>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tbody>
                            <tr>
                                 <%--<td>
                                        <asp:Label ID="Label2" runat="server" Style="margin: 70px" Text='<%#Eval("Firma_Id")%>'> </asp:Label>
                                    </td>--%>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Style="margin: 70px" Text='<%#Eval("Firma_Türü") %> '> </asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label4" runat="server" Style="margin: 70px" Text='<%#Eval("Firma_KulAdi")%>'> </asp:Label>
                                </td>                               
                                <td>
                                    <asp:Label ID="Label3" runat="server" Style="margin: 70px" Text='<%#Eval("Firma_Ip")%>'> </asp:Label>
                                </td>
                                <td>
                                    <asp:LinkButton ID="SifreGöster" runat="server" CommandName="Sec" CommandArgument='<%#Eval("encryptedPass")+"^"+Eval("Firma_Sifre")+"^"+Eval("Firma_KulAdi")+"^"+Eval("Firma_Türü")%>' OnClick="SifreGöster_Click" CssClass="linkSec buton gri">Şifre</asp:LinkButton>
                                </td>
                            </tr>
                        </tbody>
                    </ItemTemplate>
                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>            
        </li>
  </div>
    
       
    <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js"></script>
    <script src="https://unpkg.com/shards-ui@latest/dist/js/shards.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Sharrre/2.0.1/jquery.sharrre.min.js"></script>

</asp:Content>
