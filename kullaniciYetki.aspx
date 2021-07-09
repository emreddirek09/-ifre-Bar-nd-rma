<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="kullaniciYetki.aspx.cs" Inherits="SifreTutma.WebForm6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <meta name="description" content="A high-quality &amp; free Bootstrap admin dashboard template pack that comes with lots of templates and components.">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="styles/all.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" id="main-stylesheet" data-version="1.1.0" href="styles/shards-dashboards.1.1.0.min.css">
    <link rel="stylesheet" href="styles/extras.1.1.0.min.css">



    <div class="row">
        <div class="col" style="text-align: center;">
            <label class=" align-content-center text-black">Kullanıcı Seç  :</label>
            <asp:DropDownList ID="DropDownList1" runat="server" class="btn btn-outline-secondary btn-lg dropdown-toggle" Height="50px" Width="250">
                <asp:ListItem Enabled="true">Seçiniz</asp:ListItem>
            </asp:DropDownList>
            <label class="text-black">Bölüm Seç  :</label>
            <asp:DropDownList ID="DropDownList2" runat="server" class="btn btn-outline-secondary btn-lg dropdown-toggle" Height="50px" Width="250">
                <asp:ListItem Enabled="true">Seçiniz</asp:ListItem>
            </asp:DropDownList>
        </div>
    </div>
    <div class="list-group-item p-3 text-center">
        <asp:Button ID="Yetkilendirme" type="submit" runat="server" CssClass="bg-secondary block text-white " Width="120px" Height="40px" Text="YETKİLENDİR" OnClick="Yetkilendirme_Click" />

    </div>
    <div class="col" style="text-align: center;">
        <asp:Label ID="Label2" clas="control" runat="server"></asp:Label>

    </div>
    <li class="list-group-item p-3">
        <div class="col-xs-12">

        <asp:Repeater ID="Repeater1" runat="server">
            <HeaderTemplate>
                <table class="table  table-striped text-center">
                    <thead class="thead-bg-info">
                        <th class="  bg-secondary block text-white">Kullanıcı </th>
                        <th class="  bg-secondary block text-white">Bölüm</th>
                        <th class="  bg-secondary block text-white">Sil</th>

                    </thead>
            </HeaderTemplate>
            <ItemTemplate>
                <tbody>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("Kullanici_Adi") %> '> </asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label7" runat="server" Text='<%#Eval("Bolum_Adi")%>'> </asp:Label>
                        </td>
                        <td>
                            <asp:LinkButton ID="Sil" runat="server" title="Silmek İçin Tıklayınız" CssClass="fa fa-trash text-danger text" OnClick="Sil_Click" OnClientClick="return confirm('Silmek istiyormusunuz ?')" CommandArgument='<%#Eval("Id") %>'><span style="color:red;"></span></asp:LinkButton>
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
