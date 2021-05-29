<%@ Page Title="" Language="C#" MasterPageFile="~/Ana.Master" AutoEventWireup="true" CodeBehind="AracDuzenle.aspx.cs" Inherits="AracKiralama.AracDuzenle" %>
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
              
              <!--recent-orders-->
              <div class="box-account">
                <div class="page-title">
                  <h2>Araç Düzenle</h2>
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
<%--                      <div class="box-content">
                      <asp:Label ID="Label5" runat="server" Text="Kiralandı mı?" width="120px"></asp:Label>
                      <asp:CheckBox ID="CheckBox1" runat="server" />
                      </div>--%>
                     <div class="box-content"> 
                       <asp:Button ID="btnAracEkle" runat="server" Text="Araç Düzenle" OnClick="btnAracEkle_Click" />
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
