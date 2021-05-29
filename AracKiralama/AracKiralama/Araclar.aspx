<%@ Page Title="" Language="C#" MasterPageFile="~/Ana.Master" AutoEventWireup="true" CodeBehind="Araclar.aspx.cs" Inherits="AracKiralama.Araclar" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-heading">
  <div class="breadcrumbs">
    <div class="container">
      <div class="row">
        <div class="col-xs-12">

        </div>
        <!--col-xs-12--> 
      </div>
      <!--row--> 
    </div>
    <!--container--> 
  </div>
  <div class="page-title">
    <h2>ARAÇLAR</h2>
  </div>
</div>

  <div class="container">
    <div class="row">
      <div class="col-main col-sm-12 product-grid">
      <div class="pro-coloumn">
        <article class="col-main">
          <div class="category-products">

              <asp:DataList ID="DataList1" runat="server" RepeatLayout="Flow">
                <HeaderTemplate>
                <ul class="products-grid">
                </HeaderTemplate>                             
              <ItemTemplate>
              <li class="item col-lg-4 col-md-4 col-sm-4 col-xs-6">
               <div class="item-inner">
                <div class="item-img">
                  <div class="item-img-info"><a href="product-detail.html" title="Retis lapen casen" class="product-image">
                      <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("aracFoto") %>' /></a>
                    <div class="new-label new-top-left"><asp:Label ID="lblYil" runat="server" Text='<%# Eval("yil") %>'></asp:Label></div>
                    <div class="item-box-hover">
                      <div class="box-inner">
                        <div class="add_cart">
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="item-info">
                  <div class="info-inner">
                    <div class="item-title"><a href="#" title="Retis lapen casen">
                        <asp:Label ID="lblModel" runat="server" Text='<%# Eval("model") %>'></asp:Label>       
                        </a> </div>
                    <div class="item-content">
                      <div class="item-price">
                        <div class="price-box"><span class="regular-price"><span class="price">
                            <asp:Label ID="lblUcret" runat="server" Text='<%# Eval("ucret") %>'></asp:Label>TL</span> </span> </div>
                      </div>
                      <div class="other-info">
                         <div class="item-title"><p class="color:gray;">
                             <asp:Label ID="lblAciklama" runat="server" Text='<%# Eval("aciklama") %>'></asp:Label></p> </div>
                      </div>
                                              <div class="other-info">
                         <div class="item-title"><p>
<%--                             <asp:Button ID="btnAracAl" Text="Kirala" class="button create-account" runat="server" OnClick="btnAracAl_Click" />--%>
                      <a href="Araclar.aspx?ArabaID=<%# Eval("arabaID") %>&islem=kirala" class="button create-account">Kirala</a>
                             </div>
                    </div>
                  </div>
                </div>
              </div>                 
              </li>
               </ItemTemplate>            
              <FooterTemplate>
               </ul>
              </FooterTemplate>
              </asp:DataList>
          </div>
        </article>
        </div>
        <!--	///*///======    End article  ========= //*/// --> 
      </div>

      <!--col-right sidebar--> 
    </div>
    <!--row--> 
  </div>
</asp:Content>
