<%@ Page Title="" Language="C#" MasterPageFile="~/Ana.Master" AutoEventWireup="true" CodeBehind="Giris.aspx.cs" Inherits="AracKiralama.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="page-heading">
    <div class="container">
      <div class="row">
        <div class="col-xs-12">
     <div class="page-title">
     <h2>GİRİŞ</h2>
  </div>
        </div>
        <!--col-xs-12-->
      </div>
      <!--row-->
    </div>
    <!--container-->
  </div>
    
       
<!-- BEGIN Main Container -->  
          
       <div class="main-container col1-layout wow bounceInUp animated animated" style="visibility: visible;">     
              
	       <div class="main">                     
                            <div class="account-login container">
  <!--page-title-->

        <form action="" method="post" id="login-form">
        <input name="form_key" type="hidden" value="EPYwQxF6xoWcjLUr">
        <fieldset class="col2-set">
            <div class="col-1 new-users"> 
                  <strong>Kayıt Ol</strong>    
                <div class="content">
                   
                    <p>Kayıt olarak çok daha hızlı bir şekilde araç kiralama yapabilirsiniz.</p>
                     <div class="buttons-set">           
                         <asp:Button ID="btnKayit" class="button create-account" runat="server" Text="Kayıt Ol" OnClick="btnKayit_Click" />      
                     </div>
                </div>
            </div>
            <div class="col-2 registered-users">
             <strong>Giriş Yap</strong>             
                <div class="content">
                    
                    <p>Bir hesabınız varsa, giriş yapınız.
                    </p>
                    <ul class="form-list">
                        <li>
                             <label for="email">Email<em class="required">*</em></label>
                            <div class="input-box">
                                <asp:TextBox ID="txtKulAdi" class="input-text required-entry" runat="server"></asp:TextBox>
                                </div>
                        </li>
                        <li>
                            <label for="pass">Şifre<em class="required">*</em></label>
                            <div class="input-box">
                                <asp:TextBox ID="txtSifre" class="input-text required-entry" runat="server" TextMode="Password"></asp:TextBox>

                            </div>
                        </li>
                      </ul>
                      <p class="required">* Gerekli Alanlar</p>
                     <asp:Label ID="lblHata" class="required" Visible="false" runat="server" Text="  Kullanıcı Adı veya Şifre Yanlış"></asp:Label>
                     <div class="buttons-set">
                         <asp:Button ID="Button1" class="button login" runat="server" Text="Giriş" OnClick="Button1_Click" />

                 </div> <!--buttons-set-->
                  </div> <!--content-->                               
            </div> <!--col-2 registered-users-->
                   </fieldset> <!--col2-set-->
    </form>
    </div> <!--account-login-->
  </div><!--main-container-->
</div> <!--col1-layout-->
</asp:Content>
