<%@ Page Title="" Language="C#" MasterPageFile="~/Ana.Master" AutoEventWireup="true" CodeBehind="KayitOl.aspx.cs" Inherits="AracKiralama.KayitOl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="page-heading">
    <div class="container">
      <div class="row">
        <div class="col-xs-12">
     <div class="page-title">
     <h2>KAYIT OL</h2>
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


        <input name="form_key" type="hidden" value="EPYwQxF6xoWcjLUr">
        <fieldset class="col2-set">

            <div class="col-2 registered-users">
                      
                <div class="content">
                    

                    <ul class="form-list">
                        <li>
                             <label for="email">Kullanıcı Adı<em class="required">*</em></label>
                            <div class="input-box">
                                <asp:TextBox ID="txtKuladi" class="input-text required-entry" runat="server"></asp:TextBox>
                            </div>
                        </li>
                        <li>
                            <label for="pass">Şifre<em class="required">*</em></label>
                            <div class="input-box">
                                <asp:TextBox ID="txtSifre" class="input-text required-entry validate-password" runat="server" TextMode="Password"></asp:TextBox>
                            </div>
                        </li>
                        <li>
                            <label for="pass">Ad<em class="required">*</em></label>
                            <div class="input-box">
                                <asp:TextBox ID="txtAd" class="input-text required-entry" runat="server"></asp:TextBox>
                            </div>
                        </li>
                        <li>
                            <label for="pass">Soyad<em class="required">*</em></label>
                            <div class="input-box">
                                <asp:TextBox ID="txtSoyad" class="input-text required-entry" runat="server"></asp:TextBox>
                            </div>
                        </li>
                      </ul>
                      <p class="required">* Lütfen Boş Alan Bırakmayınız
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="" ControlToValidate="txtKuladi"></asp:RequiredFieldValidator>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="" ControlToValidate="txtSifre"></asp:RequiredFieldValidator>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="" ControlToValidate="txtAd"></asp:RequiredFieldValidator>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="" ControlToValidate="txtSoyad"></asp:RequiredFieldValidator>

                          </p>  
                     <div class="buttons-set">
                  
                         <asp:Button ID="btnKayitol" runat="server" Text="Kayıt Ol"  class="button login"/>

                 </div> <!--buttons-set-->
                  </div> <!--content-->                               
            </div> <!--col-2 registered-users-->
                   </fieldset> <!--col2-set-->
   
    </div> <!--account-login-->
  </div><!--main-container-->
</div> <!--col1-layout-->
  
</asp:Content>
