<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kayit.aspx.cs" Inherits="SifreTutma.kayit" Debug="true"%>

<html class="no-js h-100" lang="en"><head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>GRAF EGE</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" id="main-stylesheet" data-version="1.1.0" href="styles/shards-dashboards.1.1.0.min.css">
    <link rel="stylesheet" href="styles/extras.1.1.0.min.css">
    <script src="https://connect.facebook.net/en_US/all.js?hash=53f1652053bbb8a0cd150325edc640a0&amp;ua=modern_es6" async="" crossorigin="anonymous"></script><script type="text/javascript" async="" src="https://platform.twitter.com/widgets.js"></script><script id="facebook-jssdk" src="https://connect.facebook.net/en_US/all.js#xfbml=1"></script><script async="" defer="" src="https://buttons.github.io/buttons.js"></script>
  <style type="text/css">
      /* Chart.js */
      @-webkit-keyframes chartjs-render-animation {
          from {
              opacity: 0.99
          }

          to {
              opacity: 1
          }
      }

      @keyframes chartjs-render-animation {
          from {
              opacity: 0.99
          }

          to {
              opacity: 1
          }
      }

      .chartjs-render-monitor {
          -webkit-animation: chartjs-render-animation 0.001s;
          animation: chartjs-render-animation 0.001s;
      }
  </style><script charset="utf-8" src="https://platform.twitter.com/js/button.509719336ca39171c37a321231ccaf83.js"></script>
    <style type="text/css">
                                                                                                                              
        .fb_hidden {
                    
            position: absolute;
            
            top: -10000px;
            
            z-index: 10001
            
            }


        
        .fb_reposition {
        
            overflow: hidden;
            
            position: relative
            
                }


        
        .fb_invisible {
        
            display: none
                                                                                                                                }


        
        .fb_reset {
        
            background: none;
            
            border: 0;
            
            border-spacing: 0;
            
            color: #000;
            
            cursor: auto;
            
            direction: ltr;
            
            font-family: "lucida grande", tahoma, verdana, arial, sans-serif;
            
            font-size: 11px;
            
            font-style: normal;
           
            font-variant: normal;
            

            
            font-weight: normal;
            
            
            
            letter-spacing: normal;
            
            
            
            line-height: 1;
            
            
            
            margin: 0;
            
            
            
            overflow: visible;
            
            
            
            padding: 0;
            
            
            
            text-align: left;
            
            
            
            text-decoration: none;
            
            
            
            text-indent: 0;
            
            text-shadow: none;
            
            text-transform: none;
            
            visibility: visible;
            
            white-space: normal;
            

            
            word-spacing: normal
            
                }



        
        .fb_reset > div {
        
            overflow: hidden
                
                }
                      
        
        @keyframes fb_transform {
               
            from {
            
                opacity: 0;
                
                transform: scale(.95)
                
                }




            
            to {
            

                
                opacity: 1;
                
                
                
                transform: scale(1)
                
                }


            
            }



        
        .fb_animate {
        
            animation: fb_transform .3s forwards
            
                }


        
        .fb_dialog {
        
            background: rgba(82, 82, 82, .7);
            
            position: absolute;
            
            top: -10000px;
            
            z-index: 10001
            
            }


        
        .fb_dialog_advanced {
        
            border-radius: 8px;
            
            padding: 10px
            
            }
                                
        
        .fb_dialog_content {
        
                          
            background: #fff;
                                                                                                                                    
            
            color: #373737
            
            }
        

            
        
        
        .fb_dialog_close_icon {
        
            background: url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 0 transparent;
                                                                                                                                    
            cursor: pointer;        
            
                            
            display: block;
            
            height: 15px;
            
            
            
            position: absolute;
            
            
                                                                                                                                    right: 18px;
            
                                                                                                                                    top: 17px;
                                                                                                                                    
                                                                                                                                    width: 15px
                                                                                                                                }



                                                                                                                                .fb_dialog_mobile .fb_dialog_close_icon {
                                                                                                                                    left: 5px;
                                                                                                                                    right: auto;
                                                                                                                                    top: 5px
                                                                                                                                }

                                                                                                                                .fb_dialog_padding {
                                                                                                                                    background-color: transparent;
                                                                                                                                    position: absolute;
                                                                                                                                    width: 1px;
                                                                                                                                    z-index: -1
                                                                                                                                }

                                                                                                                                .fb_dialog_close_icon:hover {
                                                                                                                                    background: url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -15px transparent
                                                                                                                                }

                                                                                                                                .fb_dialog_close_icon:active {
                                                                                                                                    background: url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -30px transparent
                                                                                                                                }

                                                                                                                                .fb_dialog_iframe {
                                                                                                                                    line-height: 0
                                                                                                                                }

                                                                                                                                .fb_dialog_content .dialog_title {
                                                                                                                                    background: #6d84b4;
                                                                                                                                    border: 1px solid #365899;
                                                                                                                                    color: #fff;
                                                                                                                                    font-size: 14px;
                                                                                                                                    font-weight: bold;
                                                                                                                                    margin: 0
                                                                                                                                }

                                                                                                                                    .fb_dialog_content .dialog_title > span {
                                                                                                                                        background: url(https://static.xx.fbcdn.net/rsrc.php/v3/yd/r/Cou7n-nqK52.gif) no-repeat 5px 50%;
                                                                                                                                        float: left;
                                                                                                                                        padding: 5px 0 7px 26px
                                                                                                                                    }

                                                                                                                                body.fb_hidden {
                                                                                                                                    height: 100%;
                                                                                                                                    left: 0;
                                                                                                                                    margin: 0;
                                                                                                                                    overflow: visible;
                                                                                                                                    position: absolute;
                                                                                                                                    top: -10000px;
                                                                                                                                    transform: none;
                                                                                                                                    width: 100%
                                                                                                                                }

                                                                                                                                .fb_dialog.fb_dialog_mobile.loading {
                                                                                                                                    background: url(https://static.xx.fbcdn.net/rsrc.php/v3/ya/r/3rhSv5V8j3o.gif) white no-repeat 50% 50%;
                                                                                                                                    min-height: 100%;
                                                                                                                                    min-width: 100%;
                                                                                                                                    overflow: hidden;
                                                                                                                                    position: absolute;
                                                                                                                                    top: 0;
                                                                                                                                    z-index: 10001
                                                                                                                                }

                                                                                                                                    .fb_dialog.fb_dialog_mobile.loading.centered {
                                                                                                                                        background: none;
                                                                                                                                        height: auto;
                                                                                                                                        min-height: initial;
                                                                                                                                        min-width: initial;
                                                                                                                                        width: auto
                                                                                                                                    }

                                                                                                                                        .fb_dialog.fb_dialog_mobile.loading.centered #fb_dialog_loader_spinner {
                                                                                                                                            width: 100%
                                                                                                                                        }

                                                                                                                                        .fb_dialog.fb_dialog_mobile.loading.centered .fb_dialog_content {
                                                                                                                                            background: none
                                                                                                                                        }

                                                                                                                                .loading.centered #fb_dialog_loader_close {
                                                                                                                                    clear: both;
                                                                                                                                    color: #fff;
                                                                                                                                    display: block;
                                                                                                                                    font-size: 18px;
                                                                                                                                    padding-top: 20px
                                                                                                                                }

                                                                                                                                #fb-root #fb_dialog_ipad_overlay {
                                                                                                                                    background: rgba(0, 0, 0, .4);
                                                                                                                                    bottom: 0;
                                                                                                                                    left: 0;
                                                                                                                                    min-height: 100%;
                                                                                                                                    position: absolute;
                                                                                                                                    right: 0;
                                                                                                                                    top: 0;
                                                                                                                                    width: 100%;
                                                                                                                                    z-index: 10000
                                                                                                                                }

                                                                                                                                    #fb-root #fb_dialog_ipad_overlay.hidden {
                                                                                                                                        display: none
                                                                                                                                    }

                                                                                                                                .fb_dialog.fb_dialog_mobile.loading iframe {
                                                                                                                                    visibility: hidden
                                                                                                                                }

                                                                                                                                .fb_dialog_mobile .fb_dialog_iframe {
                                                                                                                                    position: sticky;
                                                                                                                                    top: 0
                                                                                                                                }

                                                                                                                                .fb_dialog_content .dialog_header {
                                                                                                                                    background: linear-gradient(from(#738aba), to(#2c4987));
                                                                                                                                    border-bottom: 1px solid;
                                                                                                                                    border-color: #1d3c78;
                                                                                                                                    box-shadow: white 0 1px 1px -1px inset;
                                                                                                                                    color: #fff;
                                                                                                                                    font: bold 14px Helvetica, sans-serif;
                                                                                                                                    text-overflow: ellipsis;
                                                                                                                                    text-shadow: rgba(0, 30, 84, .296875) 0 -1px 0;
                                                                                                                                    vertical-align: middle;
                                                                                                                                    white-space: nowrap
                                                                                                                                }

                                                                                                                                    .fb_dialog_content .dialog_header table {
                                                                                                                                        height: 43px;
                                                                                                                                        width: 100%
                                                                                                                                    }

                                                                                                                                    .fb_dialog_content .dialog_header td.header_left {
                                                                                                                                        font-size: 12px;
                                                                                                                                        padding-left: 5px;
                                                                                                                                        vertical-align: middle;
                                                                                                                                        width: 60px
                                                                                                                                    }

                                                                                                                                    .fb_dialog_content .dialog_header td.header_right {
                                                                                                                                        font-size: 12px;
                                                                                                                                        padding-right: 5px;
                                                                                                                                        vertical-align: middle;
                                                                                                                                        width: 60px
                                                                                                                                    }

                                                                                                                                .fb_dialog_content .touchable_button {
                                                                                                                                    background: linear-gradient(from(#4267B2), to(#2a4887));
                                                                                                                                    background-clip: padding-box;
                                                                                                                                    border: 1px solid #29487d;
                                                                                                                                    border-radius: 3px;
                                                                                                                                    display: inline-block;
                                                                                                                                    line-height: 18px;
                                                                                                                                    margin-top: 3px;
                                                                                                                                    max-width: 85px;
                                                                                                                                    padding: 4px 12px;
                                                                                                                                    position: relative
                                                                                                                                }

                                                                                                                                .fb_dialog_content .dialog_header .touchable_button input {
                                                                                                                                    background: none;
                                                                                                                                    border: none;
                                                                                                                                    color: #fff;
                                                                                                                                    font: bold 12px Helvetica, sans-serif;
                                                                                                                                    margin: 2px -12px;
                                                                                                                                    padding: 2px 6px 3px 6px;
                                                                                                                                    text-shadow: rgba(0, 30, 84, .296875) 0 -1px 0
                                                                                                                                }

                                                                                                                                .fb_dialog_content .dialog_header .header_center {
                                                                                                                                    color: #fff;
                                                                                                                                    font-size: 16px;
                                                                                                                                    font-weight: bold;
                                                                                                                                    line-height: 18px;
                                                                                                                                    text-align: center;
                                                                                                                                    vertical-align: middle
                                                                                                                                }

                                                                                                                                .fb_dialog_content .dialog_content {
                                                                                                                                    background: url(https://static.xx.fbcdn.net/rsrc.php/v3/y9/r/jKEcVPZFk-2.gif) no-repeat 50% 50%;
                                                                                                                                    border: 1px solid #4a4a4a;
                                                                                                                                    border-bottom: 0;
                                                                                                                                    border-top: 0;
                                                                                                                                    height: 150px
                                                                                                                                }

                                                                                                                                .fb_dialog_content .dialog_footer {
                                                                                                                                    background: #f5f6f7;
                                                                                                                                    border: 1px solid #4a4a4a;
                                                                                                                                    border-top-color: #ccc;
                                                                                                                                    height: 40px
                                                                                                                                }

                                                                                                                                #fb_dialog_loader_close {
                                                                                                                                    float: left
                                                                                                                                }

                                                                                                                                .fb_dialog.fb_dialog_mobile .fb_dialog_close_button {
                                                                                                                                    text-shadow: rgba(0, 30, 84, .296875) 0 -1px 0
                                                                                                                                }

                                                                                                                                .fb_dialog.fb_dialog_mobile .fb_dialog_close_icon {
                                                                                                                                    visibility: hidden
                                                                                                                                }

                                                                                                                                #fb_dialog_loader_spinner {
                                                                                                                                    animation: rotateSpinner 1.2s linear infinite;
                                                                                                                                    background-color: transparent;
                                                                                                                                    background-image: url(https://static.xx.fbcdn.net/rsrc.php/v3/yD/r/t-wz8gw1xG1.png);
                                                                                                                                    background-position: 50% 50%;
                                                                                                                                    background-repeat: no-repeat;
                                                                                                                                    height: 24px;
                                                                                                                                    width: 24px
                                                                                                                                }

                                                                                                                                @keyframes rotateSpinner {
                                                                                                                                    0% {
                                                                                                                                        transform: rotate(0deg)
                                                                                                                                    }

                                                                                                                                    100% {
                                                                                                                                        transform: rotate(360deg)
                                                                                                                                    }
                                                                                                                                }

                                                                                                                                .fb_iframe_widget {
                                                                                                                                    display: inline-block;
                                                                                                                                    position: relative
                                                                                                                                }

                                                                                                                                    .fb_iframe_widget span {
                                                                                                                                        display: inline-block;
                                                                                                                                        position: relative;
                                                                                                                                        text-align: justify
                                                                                                                                    }

                                                                                                                                    .fb_iframe_widget iframe {
                                                                                                                                        position: absolute
                                                                                                                                    }

                                                                                                                                .fb_iframe_widget_fluid_desktop, .fb_iframe_widget_fluid_desktop span, .fb_iframe_widget_fluid_desktop iframe {
                                                                                                                                    max-width: 100%
                                                                                                                                }

                                                                                                                                    .fb_iframe_widget_fluid_desktop iframe {
                                                                                                                                        min-width: 220px;
                                                                                                                                        position: relative
                                                                                                                                    }

                                                                                                                                .fb_iframe_widget_lift {
                                                                                                                                    z-index: 1
                                                                                                                                }

                                                                                                                                .fb_iframe_widget_fluid {
                                                                                                                                    display: inline
                                                                                                                                }

                                                                                                                                    .fb_iframe_widget_fluid span {
                                                                                                                                        width: 100%
                                                                                                                                    }
                                                                                                                            </style></head>
  <body class="h-100" >
    <div class="container-fluid">
      <div class="row">
        <!-- Main Sidebar -->

        <!-- End Main Sidebar -->

        <main class="main-content col-lg-10 col-md-10 col-sm-12 p-10 offset-lg-1 offset-md-3">
            <form id="form1" runat="server" class="form-group">
              <li class="list-group-item p-3">   
                     
            <a class="navbar-brand w-100 mr-0  font-weight-bold" href="#" style="line-height: 25px;">
                <div class="d-table m-auto">
                  <img id="main-logo" class="d-inline-block align-top mr-1" style="max-width: 25px;" src="images/shards-dashboards-logo.svg" alt="Shards Dashboard">
                  <span class="d-none d-md-inline ml-1 ">GRAFEG</span>
                </div>
              </a>
            </li>
                     
                <div class="col-xs-12">
        <li class="list-group-item p-3">
            <div class="col-xs-12">
                <table class="table table-striped text-center">
                    <tr>
                        <td>
                            <label for="feFirstName" ">Adı:</label>
                        </td>

                        <td>
                             <input type="text" id="adi" runat="server">
                        </td>

                        <td>
                            <label for="feLastName">Soyadı:</label>
                                
                        </td>


                        <td>
                            <input type="text"  id="soyadi" runat="server"> 
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="feFirstName">Kullanıcı Adı: </label>
                                
                        </td>

                        <td>
                            <input type="text" id="kulAdi" runat="server">
                        </td>

                        <td>
                             <label for="feLastName">Kullanıcı Sifre:</label>
                                
                        </td>

                        <td>
                           <input type="password"  id="kulSifre" runat="server" >
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="feEmailAddress">E-Posta:</label>
                        </td>

                        <td>
                             <input type="email" id="eposta" runat="server">
                        </td>

                        <td>
                           <label for="feInputAddress">Adres:</label>
                                
                        </td>


                        <td>
                           <input type="text" id="adres" runat="server">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="feInputCity">Şehir:</label>
                           
                        </td>

                        <td>
                                <input type="text" id="sehir" runat="server">
                        </td>

                        <td>
                             <label for="fePassword">Statü</label>                                
                        </td>

                        <td>
                           <input type="text"  id="statu" runat="server">
                        </td>
                    </tr>
                    <tr>
                        <td>
                           <label>İletişim :</label> 
                        </td>
                        <td>
                            <input id="iletisim" maxlength="10" placeholder="###-###-####"  runat="server">
                        </td>
                        <td>
                             <div><asp:Button ID="Button1" runat="server" Text="ONAYLA" type="submit" class="bg-secondary block text-white" OnClick="Button1_Click1" /></div>
                        </td><td></td>
                        
                    </tr>
                    <tr class="text-center">
                        <td class="text-center">
                            <asp:Label ID="Label1" runat="server" ></asp:Label>
                        </td>
                    </tr>
                    
      
                </table>
            </div>

        </li>

                </div> 
     </form>
 </main>

    <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js"></script>
    <script src="https://unpkg.com/shards-ui@latest/dist/js/shards.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Sharrre/2.0.1/jquery.sharrre.min.js"></script>


<%--    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://unpkg.com/jquery-input-mask-phone-number@1.0.11/dist/jquery-input-mask-phone-number.js"></script>

        <script>
            $(document).ready(function () {
                $('#iletisim').usPhoneFormat({
                    format: '(xxx) xxx-xxxx',
                });
            });

        </script>--%>
  
</body></html>  