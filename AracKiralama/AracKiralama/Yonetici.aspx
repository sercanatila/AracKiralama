<%@ Page Title="" Language="C#" MasterPageFile="~/Ana.Master" AutoEventWireup="true" CodeBehind="Yonetici.aspx.cs" Inherits="AracKiralama.Yonetici" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="page-heading">
    <div class="container">
      <div class="row">
        <div class="col-xs-12">
        <div class="page-title">
          <h2>YÖNETİCİ</h2>
          </div>
        </div>
      </div>
    </div>
  </div>	
  
  <!-- BEGIN Main Container col2-right -->
  <section class="main-container col2-right-layout">
    <div class="main container">
      <div class="row">
        <section class="col-main col-sm-9 col-xs-12 wow bounceInUp animated animated" style="visibility: visible;">
          <div class="my-account">
            <!--page-title--> 
            <!-- BEGIN DASHBOARD-->
            <div class="dashboard">
              <div class="recent-orders">
                <div class="title-buttons"> <strong>ARAÇLAR</strong></div>
                <div class="table-responsive">
                  <asp:DataList ID="DataList2" runat="server">
                  <HeaderTemplate>
                  <table class="data-table table-striped" id="my-orders-table">
                                               <colgroup>
                    <col width="120px">
                    <col width="160px">
                    <col width="120px">
                    <col width="120px">
                    <col width="120px">
<%--                    <col width="120px">--%>
                    <col width="120px">
                    </colgroup>
                      <tr class="first last">
                        <th>Model </th>
                        <th>Açıklama</th>
                        <th>Ücret</th>
                        <th>Yılı</th>
                        <th>Durum</th>
                           <th>Kiralayan</th>
<%--                        <th>Sahibi</th>--%>
                        <th>İşlemler</th>
                      </tr>
                      </table>
                      </HeaderTemplate>
                       <ItemTemplate>
                      <table class="data-table table-striped" id="my-orders-table">
                                              <colgroup>
                    <col width="120px">
                    <col width="160px">
                    <col width="120px">
                    <col width="120px">
                    <col width="120px">
                    <col width="120px">
                    </colgroup>
                      <tr class="last odd">
                        <th ><asp:Label ID="lblModel" runat="server" Text='<%# Eval("model") %>'></asp:Label> </th>
                        <th><asp:Label ID="lblAciklama" runat="server" Text='<%# Eval("aciklama") %>'></asp:Label></th>
                        <th><asp:Label ID="lblUcret" runat="server" Text='<%# Eval("ucret") %>'></asp:Label></th>
                        <th><asp:Label ID="lblYil" runat="server" Text='<%# Eval("yil") %>'></asp:Label></th>
                        <th><asp:Label ID="lblDurum" runat="server" Text='<%# Eval("durum") %>'></asp:Label></th>
                        <th><asp:Label ID="lblSahibi" runat="server" Text='<%# Eval("sahibi") %>'></asp:Label></th>
                        <td class="a-center last"><span class="nobr"> <a href="AracDuzenle.aspx?ArabaID=<%# Eval("arabaID") %>">Güncelle</a>
                            <span class="separator">|</span> <a href="Yonetici.aspx?ArabaID=<%# Eval("arabaID") %>&islem=sil" class="link-reorder">Sil</a> </span></td>
                      </tr>
                  </table>
                  </ItemTemplate>
                       </asp:DataList>
</div>

                <!--table-responsive-->                 
              </div>
              <!--recent-orders-->
              <div class="box-account">
                <div class="page-title">
                  <h2>Araç Ekle</h2>
                </div>
                <div class="col2-set">
                  <div class="col-1">
                    <div class="box">
                      <!--box-title-->
                      <div class="box-content">
                      <asp:Label ID="Label1" runat="server" Text="Model" width="120px"></asp:Label>
                      <asp:TextBox ID="txtModel" runat="server"></asp:TextBox>
                      </div>
                       <div class="box-content">
                      <asp:Label ID="Label2" runat="server" Text="Açıklama" width="120px"></asp:Label>
                      <asp:TextBox ID="txtAciklama" runat="server"></asp:TextBox>
                      </div>
                       <div class="box-content">
                      <asp:Label ID="Label3" runat="server" Text="Ücret" width="120px"></asp:Label>
                      <asp:TextBox ID="txtUcret" runat="server"></asp:TextBox>
                      </div>
                       <div class="box-content">
                      <asp:Label ID="Label4" runat="server" Text="Yılı" width="120px"></asp:Label>
                      <asp:TextBox ID="txtYili" runat="server"></asp:TextBox>
                      </div>
                       <div class="box-content">
                      <asp:Label ID="Label5" runat="server" Text="Araç Fotosu" width="120px"></asp:Label>
                       <asp:FileUpload ID="FileUpload1" runat="server" />
                      </div>

                     <div class="box-content"> 
                       <asp:Button ID="btnAracEkle" runat="server" Text="Araç Ekle" OnClick="btnAracEkle_Click" />
                      </div>
                      <!--box-content--> 
                    </div>
                    <!--box--> 
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
        <!--col-main col-sm-9 wow bounceInUp animated-->
        <aside class="col-right sidebar col-sm-3 col-xs-12 wow bounceInUp animated animated" style="visibility: visible;">
          <div class="block block-account">
            <div class="block-title"> Menü </div>
            <div class="block-content">
              <ul>
                <li class="current"><a>Araçlar</a></li>
                <li><a href="#"><span> Üyeler</span></a></li>
                <li><a href="#"><span> Kiralama</span></a></li>
              </ul>
            </div>
            <!--block-content--> 
          </div>
          <!--block block-account-->
      
        </aside>
        <!--col-right sidebar col-sm-3 wow bounceInUp animated--> 
      </div>
      <!--row--> 
    </div>
    <!--main container--> 
  </section>
</asp:Content>
