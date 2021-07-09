<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="bolumekle.aspx.cs" Inherits="SifreTutma.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="row">
    
    <table class="table bg-light text-center">
        <tr>
            <td>
                <asp:TextBox class="form-control-lg is-invalid" ID="firAdiText" runat="server"  ></asp:TextBox>
            </td>

        </tr>
        <tr>
            <td>
            <asp:Button type="submit" runat="server" CssClass="bg-secondary block text-white " Width="120px" Height="40px" Text="Ekle" OnClick="bolumekle_Click" />
            
            </td>
            
        </tr>
        
    </table>
    </div>    
    <div class="col" style="text-align:center">
    <asp:Label ID="Label1" runat="server"></asp:Label>    
    </div>
      <li class="list-group-item p-3">
        <div class="col-xs-12">
    <asp:Repeater ID="Repeater1" runat="server">
            <HeaderTemplate>
                <table class="table  table-striped text-center">
                    <thead class="thead-bg-info">
                        
                        <th class="  bg-secondary block text-white"> ID </th>
                        <th class="  bg-secondary block text-white">İSİM</th>
                        <th class="  bg-secondary block text-white">SİL</th>

                    </thead>
            </HeaderTemplate>
            <ItemTemplate>
                <tbody>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text='<%#Eval("Id")%>'> </asp:Label>

                        </td>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text='<%#Eval("isim") %> '> </asp:Label>
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
          
</asp:Content>
