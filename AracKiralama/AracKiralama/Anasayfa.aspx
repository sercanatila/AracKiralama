<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="AracKiralama.Anasayfa1" %>


<!DOCTYPE html>

<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Harrier Home Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Default Description">
    <meta name="keywords" content="fashion, store, E-commerce">
    <meta name="robots" content="*">
    <link rel="icon" href="#" type="image/x-icon">
    <link rel="shortcut icon" href="#" type="image/x-icon">

    <!-- CSS Style -->
    <link rel="stylesheet" type="text/css" href="stylesheet/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="stylesheet/font-awesome.css" media="all">
    <link rel="stylesheet" type="text/css" href="stylesheet/bootstrap-select.css">
    <link rel="stylesheet" type="text/css" href="stylesheet/revslider.css">
    <link rel="stylesheet" type="text/css" href="stylesheet/owl.carousel.css">
    <link rel="stylesheet" type="text/css" href="stylesheet/owl.theme.css">
    <link rel="stylesheet" type="text/css" href="stylesheet/jquery.bxslider.css">
    <link rel="stylesheet" type="text/css" href="stylesheet/jquery.mobile-menu.css">
    <link rel="stylesheet" type="text/css" href="stylesheet/style.css" media="all">
    <link rel="stylesheet" type="text/css" href="stylesheet/responsive.css" media="all">
    <link href='../../css.css?family=Open+Sans:400italic,600italic,700italic,400,600,700,800' rel='stylesheet' type='text/css'>
    <link href="../../css-1.css?family=Teko:300,400,500,600,700" rel="stylesheet">
    <link href="../../css-2.css?family=Saira+Condensed:300,400,500,600,700,800" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <div class="container">
                <div class="row">
                    <div id="header">
                        <div class="header-container">
                            <div class="header-logo">
                                <a href="Anasayfa.aspx" title="Car HTML" class="logo">
                                    <div>
                                        <img src="images/hemenLogo.png" alt="Car Store"></div>
                                </a>
                            </div>
                            <div class="header__nav">

                                <div class="fl-header-right">
                                    <div class="fl-links">
                                        <h2>
                                            <asp:Label ID="lblAdsoyad" runat="server" Text=""></asp:Label>
                                        <asp:Button ID="btnCikis" class="button login" runat="server" Text="Çıkış" OnClick="btnCikis_Click"/>
                                        <asp:Button ID="btnGiris" class="button login" runat="server" Text="Giriş" OnClick="btnGiris_Click"/>
                                        </h2>

                                    </div>
                                    <!--links-->
                                </div>
                                <div class="fl-nav-menu">
                                    <nav>
                                        <div class="mm-toggle-wrap">
                                            <div class="mm-toggle"><i class="fa fa-bars"></i><span class="mm-label">Menu</span> </div>
                                        </div>
                                        <div class="nav-inner">
                                            <!-- BEGIN NAV -->
                                            <ul id="nav" class="hidden-xs">
                                                <li class="active"><a class="level-top" href="Anasayfa.aspx"><span>Anasayfa</span></a></li>
                                                <li class="level0 parent drop-menu"><a class="level-top" href="Araclar.aspx"><span>Araçlar</span></a></li>
                                            </ul>
                                            <!--nav-->
                                        </div>
                                    </nav>
                                </div>
                            </div>

                            <!--row-->

                        </div>
                    </div>
                </div>
            </div>
        </header>


        <div class="content">
            <div class="container-fluid">
                <div class="container">
                    <div class="row">
                        <div class="section-filter">
                            <div class="b-filter__inner bg-grey">
                               
                                <h2>MODEL SEÇİNİZ</h2>
                                <div class="btn-group" style="width: 100%;">
                                    <asp:DropDownList ID="modelDropdown"  runat="server" class="selectpicker" data-width="100%" TabIndex="-98" OnSelectedIndexChanged="dropdownChanged">
                                    </asp:DropDownList>
                                </div>
                                <div>
                                    <div class="b-filter__btns">
                                        <asp:Button ID="btnAracAra" runat="server" Text="En iyi aracı bul" class="btn btn-lg btn-primary" OnClick="btnAracAra_Click" />
                                    </div>
                                </div>
                                    
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <!-- Slider -->
                    <div class="home-slider5">
                        <div id="thmg-slideshow" class="thmg-slideshow">
                            <div id='rev_slider_4_wrapper' class='rev_slider_wrapper fullwidthbanner-container'>
                                <div id='rev_slider_4' class='rev_slider fullwidthabanner'>
                                    <ul>
                                        <li data-transition='random' data-slotamount='7' data-masterspeed='1000' data-thumb='images/slide-img1.jpg'>
                                            <img src='images/slide-img1.jpg' data-bgfit='cover' data-bgrepeat='no-repeat' alt="banner">
                                            <div class="container">
                                                <div class="content_slideshow">
                                                    <div class="row">
                                                        <div class="col-lg-3 col-sm-3 col-md-3 ">&nbsp; </div>
                                                        <div class="col-lg-9 col-sm-9 col-md-9">
                                                            <div class="info">
                                                                <div class='tp-caption ExtraLargeTitle sft  tp-resizeme ' data-endspeed='500' data-speed='500' data-start='1100' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index: 2; white-space: nowrap;'><span>2021'in en iyi araçları</span> </div>
                                                                <div class='tp-caption LargeTitle sfl  tp-resizeme ' data-endspeed='500' data-speed='500' data-start='1300' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index: 3; white-space: nowrap;'><span style="font-weight: normal; display: block">Konforlu</span> Hızlı teslim </div>
                                                                <div class='tp-caption sfb  tp-resizeme ' data-endspeed='500' data-speed='500' data-start='1500' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index: 4; white-space: nowrap;'><a href='#' class="buy-btn">Şimdi Kiralayın</a> </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li data-transition='random' data-slotamount='7' data-masterspeed='1000' data-thumb='images/slide-img2.jpg'>
                                            <img src='images/slide-img2.jpg' data-bgfit='cover' data-bgrepeat='no-repeat' alt="banner">
                                            <div class="container">
                                                <div class="content_slideshow">
                                                    <div class="row">
                                                        <div class="col-lg-3 col-sm-3 col-md-3">&nbsp;</div>
                                                        <div class="col-lg-9 col-sm-9 col-md-9">
                                                            <div class="info">
                                                                <div class='tp-caption ExtraLargeTitle sft  tp-resizeme ' data-endspeed='500' data-speed='500' data-start='1100' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index: 2; white-space: nowrap;'><span>2021'in en iyi araçları</span> </div>
                                                                <div class='tp-caption LargeTitle sfl  tp-resizeme ' data-endspeed='500' data-speed='500' data-start='1300' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index: 3; white-space: nowrap;'><span style="font-weight: normal; display: block; padding-bottom: 15px">En son model araçlarla</span> Sürüş Keyfi </div>
                                                                <div class='tp-caption sfb  tp-resizeme ' data-endspeed='500' data-speed='500' data-start='1500' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index: 4; white-space: nowrap;'><a href='#' class="buy-btn">Şimdi Kiralayın</a> </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                    <div class="tp-bannertimer"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!--Category slider Start-->
            <div class="top-cate">
                <div class="featured-pro container">
                    <div>
                    </div>
                </div>
            </div>
            <!--Category silder End-->

            <!-- best Pro Slider -->
            <section class=" wow bounceInUp animated">
                <div class="hot_deals slider-items-products container">
                    <div class="new_title">
                        <h2>Arama Sonuçları</h2>
                        <div class="box-timer">
                            <div class="countbox_1 timer-grid"></div>
                        </div>
                    </div>
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
                   <%-- <img src="products-images/p1.jpg" alt="Retis lapen casen">--%>
                      <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("aracFoto") %>' />
                                             </a>
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
                            </div>

                        </div>


            <!-- For version 1,2,3,4,6 -->

            <footer>
                <!-- BEGIN INFORMATIVE FOOTER -->
                <div class="footer-inner">
                    <div class="our-features-box wow bounceInUp animated animated">
                        <div class="container">
                        </div>
                    </div>
                    <div class="newsletter-row">
                        <div class="container">
                            <div class="row">

                                <!-- Footer Newsletter -->
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 col1">
                                    <div class="newsletter-wrap">
                                        <h5>Haberler</h5>
                                        <h4>Anında Bildirim Alın!</h4>
                                        <form action="#" method="post" id="newsletter-validate-detail1">
                                            <div id="container_form_news">
                                                <div id="container_form_news2">
                                                    <input type="text" name="email" id="newsletter1" title="Haberler için kaydolun" class="input-text required-entry validate-email" placeholder="Email adresinizi giriniz">
                                                    <button type="submit" title="Subscribe" class="button subscribe"><span>KAYDOL</span></button>
                                                </div>
                                                <!--container_form_news2-->
                                            </div>
                                            <!--container_form_news-->
                                        </form>
                                    </div>
                                    <!--newsletter-wrap-->
                                </div>
                            </div>
                        </div>
                        <!--footer-column-last-->
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-4 col-xs-12 col-lg-4">
                                <div class="co-info">
                                    <h4>HEMENKİRALA</h4>
                                    <address>
                                        <div>
                                            <span>Gazi Üniversitesi, Ankara
                                                <br>
                                                Türkiye</span>
                                        </div>
                                        <div><span>+90 535 025 72 54</span></div>
                                        <div><span><a href="#">info@hemenkirala.com</a></span></div>
                                        <div><span>Paz - Cuma : 09.00-18.00</span></div>
                                    </address>
                                </div>
                            </div>

                            <!--col-sm-12 col-xs-12 col-lg-8-->
                            <!--col-xs-12 col-lg-4-->
                        </div>
                        <!--row-->

                    </div>

                    <!--container-->
                </div>
                <!--footer-inner-->

                <div class="footer-top">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12 col-sm-4">
                            </div>
                            <div class="col-sm-4 col-xs-12 coppyright">&copy; Furkan Ceylan - Sercan Atila </div>

                        </div>
                    </div>
                </div>
                <!-- BEGIN SIMPLE FOOTER -->
            </footer>
            <!-- End For version 1,2,3,4,6 -->

        </div>


        <div id="mobile-menu">
            <ul>
                <li>
                    <div class="mm-search">
                        <form id="search1" name="search">
                            <div class="input-group">
                                <div class="input-group-btn">
                                    <button class="btn btn-default" type="submit"><i class="fa fa-search"></i></button>
                                </div>
                                <input type="text" class="form-control simple" placeholder="Search ..." name="srch-term" id="srch-term">
                            </div>
                        </form>
                    </div>
                </li>
                <li class="active"><a class="level-top" href="#"><span>Home</span></a></li>
                <li><a href="grid1.html">Accessories</a>
                    <!--mega menu-->
                    <ul class="level0">
                        <li class="level3 nav-6-1 parent item"><a href="grid.html"><span>Audio</span></a>
                            <!--sub sub category-->
                            <ul class="level1">
                                <li class="level2 nav-6-1-1"><a href="grid.html"><span>Amplifiers</span></a> </li>
                                <!--level2 nav-6-1-1-->
                                <li class="level2 nav-6-1-1"><a href="grid.html"><span>Installation Parts</span></a> </li>
                                <!--level2 nav-6-1-1-->
                                <li class="level2 nav-6-1-1"><a href="grid.html"><span>Speakers</span></a> </li>
                                <!--level2 nav-6-1-1-->
                                <li class="level2 nav-6-1-1"><a href="grid.html"><span>Stereos</span></a> </li>
                                <!--level2 nav-6-1-1-->
                                <li class="level2 nav-6-1-1"><a href="grid.html"><span>Subwoofers</span></a> </li>
                                <!--level2 nav-6-1-1-->
                            </ul>
                            <!--level1-->
                            <!--sub sub category-->
                        </li>
                        <!--level3 nav-6-1 parent item-->
                        <li class="level3 nav-6-1 parent item"><a href="grid.html"><span>Body Parts</span></a>
                            <!--sub sub category-->
                            <ul class="level1">
                                <li class="level2 nav-6-1-1"><a href="grid.html"><span>Bumpers</span></a> </li>
                                <!--level2 nav-6-1-1-->
                                <li class="level2 nav-6-1-1"><a href="grid.html"><span>Doors</span></a> </li>
                                <!--level2 nav-6-1-1-->
                                <li class="level2 nav-6-1-1"><a href="grid.html"><span>Fenders</span></a> </li>
                                <!--level2 nav-6-1-1-->
                                <li class="level2 nav-6-1-1"><a href="grid.html"><span>Grilles</span></a> </li>
                                <!--level2 nav-6-1-1-->
                                <li class="level2 nav-6-1-1"><a href="grid.html"><span>Hoods</span></a> </li>
                                <!--level2 nav-6-1-1-->
                            </ul>
                            <!--level1-->
                            <!--sub sub category-->
                        </li>
                        <!--level3 nav-6-1 parent item-->
                        <li class="level3 nav-6-1 parent item"><a href="grid.html"><span>Exterior</span></a>
                            <!--sub sub category-->
                            <ul class="level1">
                                <li class="level2 nav-6-1-1"><a href="grid.html"><span>Bed Accessories</span></a> </li>
                                <!--level2 nav-6-1-1-->
                                <li class="level2 nav-6-1-1"><a href="grid.html"><span>Body Kits</span></a> </li>
                                <!--level2 nav-6-1-1-->
                                <li class="level2 nav-6-1-1"><a href="grid.html"><span>Custom Grilles</span></a> </li>
                                <!--level2 nav-6-1-1-->
                                <li class="level2 nav-6-1-1"><a href="grid.html"><span>Car Covers</span></a> </li>
                                <!--level2 nav-6-1-1-->
                                <li class="level2 nav-6-1-1"><a href="grid.html"><span>Off-Road Bumpers</span></a> </li>
                                <!--level2 nav-6-1-1-->
                            </ul>
                            <!--level1-->
                            <!--sub sub category-->
                        </li>
                        <!--level3 nav-6-1 parent item-->
                        <li class="level3 nav-6-1 parent item"><a href="grid.html"><span>Interior</span></a>
                            <!--sub sub category-->
                            <ul class="level1">
                                <li class="level2 nav-6-1-1"><a href="grid.html"><span>Custom Gauges</span></a> </li>
                                <!--level2 nav-6-1-1-->
                                <li class="level2 nav-6-1-1"><a href="grid.html"><span>Dash Kits</span></a> </li>
                                <!--level2 nav-6-1-1-->
                                <li class="level2 nav-6-1-1"><a href="grid.html"><span>Seat Covers</span></a> </li>
                                <!--level2 nav-6-1-1-->
                                <li class="level2 nav-6-1-1"><a href="grid.html"><span>Steering Wheels</span></a> </li>
                                <!--level2 nav-6-1-1-->
                                <li class="level2 nav-6-1-1"><a href="grid.html"><span>Sun Shades</span></a> </li>
                                <!--level2 nav-6-1-1-->
                            </ul>
                            <!--level1-->
                            <!--sub sub category-->
                        </li>
                        <!--level3 nav-6-1 parent item-->
                        <li class="level3 nav-6-1 parent item"><a href="grid.html"><span>Lighting</span></a>
                            <!--sub sub category-->
                            <ul class="level1">
                                <li class="level2 nav-6-1-1"><a href="grid.html"><span>Fog Lights</span></a> </li>
                                <!--level2 nav-6-1-1-->
                                <li class="level2 nav-6-1-1"><a href="grid.html"><span>Headlights</span></a> </li>
                                <!--level2 nav-6-1-1-->
                                <li class="level2 nav-6-1-1"><a href="grid.html"><span>LED Lights</span></a> </li>
                                <!--level2 nav-6-1-1-->
                                <li class="level2 nav-6-1-1"><a href="grid.html"><span>Off-Road Lights</span></a> </li>
                                <!--level2 nav-6-1-1-->
                                <li class="level2 nav-6-1-1"><a href="grid.html"><span>Signal Lights</span></a> </li>
                                <!--level2 nav-6-1-1-->
                            </ul>
                            <!--level1-->
                            <!--sub sub category-->
                        </li>
                        <!--level3 nav-6-1 parent item-->
                        <li class="level3 nav-6-1 parent item"><a href="grid.html"><span>Performance</span></a>
                            <!--sub sub category-->
                            <ul class="level1">
                                <li class="level2 nav-6-1-1"><a href="grid.html"><span>Air Intake Systems</span></a> </li>
                                <!--level2 nav-6-1-1-->
                                <li class="level2 nav-6-1-1"><a href="grid.html"><span>Brakes</span></a> </li>
                                <!--level2 nav-6-1-1-->
                                <li class="level2 nav-6-1-1"><a href="grid.html"><span>Exhaust Systems</span></a> </li>
                                <!--level2 nav-6-1-1-->
                                <li class="level2 nav-6-1-1"><a href="grid.html"><span>Power Adders</span></a> </li>
                                <!--level2 nav-6-1-1-->
                                <li class="level2 nav-6-1-1"><a href="grid.html"><span>Racing Gear</span></a> </li>
                                <!--level2 nav-6-1-1-->
                            </ul>
                            <!--level1-->
                            <!--sub sub category-->
                        </li>
                        <!--level3 nav-6-1 parent item-->
                    </ul>
                    <!--level0-->
                </li>
                <li><a href="#">Listing‎</a>
                    <ul class="level1">
                        <li class="level1 first"><a href="grid.html"><span>Car Grid</span></a></li>
                        <li class="level1 nav-10-2"><a href="list.html"><span>Car List</span> </a></li>
                        <li class="level1 nav-10-3"><a href="grid1.html"><span>Accessories Grid</span> </a></li>
                        <li class="level1 nav-10-4"><a href="list1.html"><span>Accessories List</span> </a></li>
                        <li class="level1 first parent"><a href="car-detail.html"><span>Car Detail</span></a> </li>
                        <li class="level1 first parent"><a href="accessories-detail.html"><span>Accessories Detail</span></a> </li>
                    </ul>
                </li>
                <li><a href="grid.html">Blog</a>
                    <ul class="level1">
                        <li class="level1 first"><a href="blog.html"><span>Blog List</span></a></li>
                        <li class="level1 nav-10-2"><a href="blog-detail.html"><span>Blog Detail</span> </a></li>
                    </ul>
                </li>
                <li><a href="compare.html">Compare Cars‎</a></li>
                <li><a href="#">Pages</a>
                    <ul class="level1">
                        <li class="level1"><a href="about-us.html"><span>About us</span> </a></li>
                        <li class="level1 nav-10-4"><a href="shopping-cart.html"><span>Cart Page</span> </a></li>
                        <li class="level1 first parent"><a href="checkout.html"><span>Checkout</span></a>
                            <!--sub sub category-->
                            <ul class="level2 right-sub">
                                <li class="level2 nav-2-1-1 first"><a href="checkout-method.html"><span>Method</span></a></li>
                                <li class="level2 nav-2-1-5 last"><a href="checkout-billing-info.html"><span>Billing Info</span></a></li>
                            </ul>
                            <!--sub sub category-->
                        </li>
                        <li class="level1 nav-10-4"><a href="wishlist.html"><span>Wishlist</span> </a></li>
                        <li class="level1"><a href="dashboard.html"><span>Dashboard</span> </a></li>
                        <li class="level1"><a href="multiple-addresses.html"><span>Multiple Addresses</span> </a></li>
                        <li class="level1"><a href="contact-us.html"><span>Contact us</span></a> </li>
                        <li class="level1"><a href="404error.html"><span>404 Error Page</span></a> </li>
                        <li class="level1"><a href="login.html"><span>Login Page</span></a> </li>
                        <li class="level1"><a href="quickview.html"><span>Quick View</span></a> </li>
                        <li class="level1"><a href="newsletter.html"><span>Newsletter</span></a> </li>
                    </ul>
                </li>
                <li><a href="#">Custom</a></li>
            </ul>
        </div>
    </form>

    <!-- JavaScript -->
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script src="js/bootstrap-slider.min.js"></script>
    <script src="js/bootstrap-select.min.js"></script>
    <script type="text/javascript" src="js/parallax.js"></script>
    <script type="text/javascript" src="js/revslider.js"></script>
    <script type="text/javascript" src="js/common.js"></script>
    <script type="text/javascript" src="js/jquery.bxslider.min.js"></script>
    <script type="text/javascript" src="js/owl.carousel.min.js"></script>
    <script type="text/javascript" src="js/jquery.mobile-menu.min.js"></script>
    <script src="js/countdown.js"></script>
    <script>
        jQuery(document).ready(function () {
            jQuery('#rev_slider_4').show().revolution({
                dottedOverlay: 'none',
                delay: 5000,
                startwidth: 1170,
                startheight: 650,

                hideThumbs: 200,
                thumbWidth: 200,
                thumbHeight: 50,
                thumbAmount: 2,

                navigationType: 'thumb',
                navigationArrows: 'solo',
                navigationStyle: 'round',

                touchenabled: 'on',
                onHoverStop: 'on',

                swipe_velocity: 0.7,
                swipe_min_touches: 1,
                swipe_max_touches: 1,
                drag_block_vertical: false,

                spinner: 'spinner0',
                keyboardNavigation: 'off',

                navigationHAlign: 'center',
                navigationVAlign: 'bottom',
                navigationHOffset: 0,
                navigationVOffset: 20,

                soloArrowLeftHalign: 'left',
                soloArrowLeftValign: 'center',
                soloArrowLeftHOffset: 20,
                soloArrowLeftVOffset: 0,

                soloArrowRightHalign: 'right',
                soloArrowRightValign: 'center',
                soloArrowRightHOffset: 20,
                soloArrowRightVOffset: 0,

                shadow: 0,
                fullWidth: 'on',
                fullScreen: 'off',

                stopLoop: 'off',
                stopAfterLoops: -1,
                stopAtSlide: -1,

                shuffle: 'off',

                autoHeight: 'off',
                forceFullWidth: 'on',
                fullScreenAlignForce: 'off',
                minFullScreenHeight: 0,
                hideNavDelayOnMobile: 1500,

                hideThumbsOnMobile: 'off',
                hideBulletsOnMobile: 'off',
                hideArrowsOnMobile: 'off',
                hideThumbsUnderResolution: 0,

                hideSliderAtLimit: 0,
                hideCaptionAtLimit: 0,
                hideAllCaptionAtLilmit: 0,
                startWithSlide: 0,
                fullScreenOffsetContainer: ''
            });
        });
    </script>
    <script type="text/javascript">
        function HideMe() {
            jQuery('.popup1').hide();
            jQuery('#fade').hide();
        }
    </script>
    <script>
        var dthen1 = new Date("12/25/17 11:59:00 PM");
        start = "08/04/15 03:02:11 AM";
        start_date = Date.parse(start);
        var dnow1 = new Date(start_date);
        if (CountStepper > 0)
            ddiff = new Date((dnow1) - (dthen1));
        else
            ddiff = new Date((dthen1) - (dnow1));
        gsecs1 = Math.floor(ddiff.valueOf() / 1000);

        var iid1 = "countbox_1";
        CountBack_slider(gsecs1, "countbox_1", 1);
    </script>
</body>
</html>
