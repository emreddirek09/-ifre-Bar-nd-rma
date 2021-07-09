<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="sifreEkle.aspx.cs" Inherits="SifreTutma.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     <script type="text/javascript">
        function showModal(password) {
            const UIModalBody = document.getElementById('hashedPassword');
            UIModalBody.innerText = password;
            $("#exampleModalCenter").modal('show');
        }
    </script>
  

    <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document" data-toggle="modal" data-target="#exampleModalCenter">
            <div class="modal-content">

                <div class="modal-header text-center"> 
                    <h6 class="modal-title" id="exampleModalLongTitle">GÖRÜNTÜLENEN ŞİFRE</h6>                 
                </div>

                <div class="modal-body" id="hashedPassword"> </div>

                <div class="modal-footer">
                     <asp:Button ID="Button1" runat="server" type="button" Text="Kapat" class="btn btn-info btn-sm  close"  date-dismiss="modal"/>
                    
                </div>
            </div>
        </div>
    </div>
           
    
    <div class="row">
        <div class="col" style="text-align: center;">
            <label class="text-black">Firma Seçin : </label>
            <asp:DropDownList  ID="DropDownList1" runat="server" class="btn btn-outline-secondary btn-lg dropdown-toggle" Height="50px" Width="250">
                <asp:ListItem Enabled="false">Seçiniz</asp:ListItem></asp:DropDownList>
            <label class="text-black">Bölüm Seç  :</label>  
            <asp:DropDownList ID="DropDownList2" runat="server"  class="btn btn-outline-secondary btn-lg dropdown-toggle" Height="50px" Width="250">
                <asp:ListItem Enabled="false">Seçiniz</asp:ListItem></asp:DropDownList>              
        </div>

    </div>

    <div class="col-xs-12">
        <li class="list-group-item p-3">
            <div>
                <table class="table bg-light ">
                     <tr>
                        <td>
                            <label>Şifre Türü :</label>
                        </td>
                        <td>
                            <asp:TextBox class="form-control rounded" ID="firTürüText" runat="server"></asp:TextBox>
                        </td>

                        <td>
                            
                        <label ">Kullanıcı Adı :</label>
                        </td>

                        <td>
                          <asp:TextBox class="form-control rounded" ID="firKulAdiText" runat="server" ></asp:TextBox> 
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>Şifre Ip :</label>
                        </td>

                        <td>
                            <asp:TextBox class="form-control rounded" ID="firIpText" runat="server"></asp:TextBox>
                        </td>

                        <td>
                               <label class=" align-content-center"> Şifre :</label>  
                        </td>

                        <td>
                            
                             <asp:TextBox class="form-control rounded" ID="firSifText" TextMode="Password" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                        
                    <tr>
                        <td>
                            <asp:Button ID="Button2" runat="server"  CssClass="bg-secondary block text-white " type="submit" OnClick="Button2_Click" Width="120px" Height="40px" Text="Ekle" />
                               
                            </td>

                        <td>
                            <asp:Button ID="Button3" runat="server" CssClass="bg-secondary block text-white "  OnClick="Button3_Click"  Width="120px" Height="40px" Text="Listele"/>
                            </td>
                      
                        <td>
                                 <asp:Button ID="Güncelle" type="submit" runat="server" CssClass="bg-secondary block text-white " OnClick="Güncelle_Click1" Width="120px" Height="40px" Text="Güncelle"  />
                            </td>

                        <td>
                               
                            </td>
                    </tr>
                </table>
            </div>
    </div>
    <div class="text-center">
        <asp:Label ID="Label8" runat="server"></asp:Label>
        <asp:HiddenField ID="sec_HiddenField1" runat="server" />
        </div>
    
                    <%--<asp:Label ID="Label5" runat="server"></asp:Label>--%>
      <li class="list-group-item p-3">
        <div class="col-xs-12">

        <asp:Repeater ID="Repeater1" runat="server">
            <HeaderTemplate>
                <table class="table  table-striped text-center">
                    <thead class="thead-bg-info">
                        <th class="  bg-secondary block text-white">Seç</th>
                        <th class="  bg-secondary block text-white">Firma Adı </th>                        
                        <th class="  bg-secondary block text-white">Türü</th>
                        <th class="  bg-secondary block text-white">Kullanıcı Adı</th>
                        <%--<th class="  bg-secondary block text-white">Şifre</th>--%>
                        <th class="  bg-secondary block text-white">Ip</th>
                        <th class="  bg-secondary block text-white">Bölüm Adı</th>
                        <th class="  bg-secondary block text-white">Sil</th>
                        <th class=" bg-secondary block text-white">Göster</th>

                    </thead>
            </HeaderTemplate>
            <ItemTemplate>
                <tbody>
                    <tr>
                        <td>
                            <asp:LinkButton ID="sec" runat="server" title="Güncellemek İçin Tıklayınız" OnClick="sec_Click" CommandArgument='<%#Eval("ID") %>'>✓</asp:LinkButton>
                        </td>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("Firma_Adi") %> '> </asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label7" runat="server" Text='<%#Eval("Firma_Türü")%>'> </asp:Label>

                        </td>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text='<%#Eval("Firma_KulAdi")%>'> </asp:Label>

                        </td>
                       <%-- <td>
                            <asp:Label ID="Label3" runat="server" Text='<%#Eval("Firma_Sifre")%>'> </asp:Label>

                        </td>--%>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text='<%#Eval("Firma_Ip")%>'> </asp:Label>

                        </td><td>
                            <asp:Label ID="Label6" runat="server" Text='<%#Eval("Bolum_Adi")%>'> </asp:Label>

                        </td>
                        <td>
                            <asp:LinkButton ID="Sil" runat="server" title="Silmek İçin Tıklayınız" CssClass="fa fa-trash text-danger text" OnClick="Sil_Click"  OnClientClick="return confirm('Silmek istiyormusunuz ?')" CommandArgument='<%#Eval("Id") %>'><span style="color:red;"></span></asp:LinkButton>   
                        </td>
                        <td>
                            <asp:LinkButton ID="SifreGöster"  runat="server" CommandName="Sec" CommandArgument='<%#Eval("encryptedPass")+"^"+Eval("Firma_Sifre")%>' OnClick="SifreGöster_Click1" CssClass="linkSec buton gri">Şifre</asp:LinkButton>
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

    
</asp:Content>
