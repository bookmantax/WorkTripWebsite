<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html><head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="css\main.css" rel="stylesheet" type="text/css">
    <link href="css\slider.css" rel="stylesheet" type="text/css">
    <script src="js/slider.js" type="text/javascript" data-library="jssor.slider.mini" data-version="22.0.15"></script>
    <link rel="stylesheet" type="text/css" href="css/forms.css">
    <script type="text/javascript">
      jQuery(document).ready(function ($) {
                    
                                var jssor_1_SlideoTransitions = [
                                  [{b:-1,d:1,o:-1},{b:0,d:1000,o:1}],
                                  [{b:1900,d:2000,x:-379,e:{x:7}}],
                                  [{b:1900,d:2000,x:-379,e:{x:7}}],
                                  [{b:-1,d:1,o:-1,r:288,sX:9,sY:9},{b:1000,d:900,x:-1400,y:-660,o:1,r:-288,sX:-9,sY:-9,e:{r:6}},{b:1900,d:1600,x:-200,o:-1,e:{x:16}}]
                                ];
                    
                                var jssor_1_options = {
                                  $AutoPlay: false,
                                  $SlideDuration: 800,
                                  $SlideEasing: $Jease$.$OutQuint,
                                  $CaptionSliderOptions: {
                                    $Class: $JssorCaptionSlideo$,
                                    $Transitions: jssor_1_SlideoTransitions
                                  },
                                  $ArrowNavigatorOptions: {
                                    $Class: $JssorArrowNavigator$
                                  },
                                  $BulletNavigatorOptions: {
                                    $Class: $JssorBulletNavigator$
                                  }
                                };
                    
                                var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);
                    
                                /*responsive code begin*/
                                /*you can remove responsive code if you don't want the slider scales while window resizing*/
                                function ScaleSlider() {
                                    var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
                                    if (refSize) {
                                        refSize = Math.min(refSize, 1920);
                                        jssor_1_slider.$ScaleWidth(refSize);
                                    }
                                    else {
                                        window.setTimeout(ScaleSlider, 30);
                                    }
                                }
                                ScaleSlider();
                                $(window).bind("load", ScaleSlider);
                                $(window).bind("resize", ScaleSlider);
                                $(window).bind("orientationchange", ScaleSlider);
                                /*responsive code end*/
                            });
    </script>
  </head><body>
    <div class="cover">
      <div class=" navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container ">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-ex-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"><img style="width: 170px !important;" src="img\logo.png"></a>
          </div>
          <div class="collapse navbar-collapse" id="navbar-ex-collapse">
            <ul class="nav navbar-nav navbar-right">
              <li class="active">
                <a href="#howworks">How Worktrip Works<br></a>
              </li>
              <li>
                <a href="#perdiem">Per Diem<br></a>
              </li>
              <!-- <li>
                <a href="#testimonials">Testimonials<br></a>
              </li> -->
              <li>
                <a href="#pricing">Pricing<br></a>
              </li>
              <li class="border-right">
                <a href="#contact">Contact<br></a>
              </li>
              <!-- <li class="hidden-sm hidden-xs ">
                                <a>|</a>
                            </li> -->
              <li>
                <a id="btnLogin" href="#">Log In</a>
              </li>
              <li>
                <button  id="btnScheduleCall" class="btn btn-danger btn-custom">Talk to an Expert</button>
              </li>
            </ul>
          </div>
        </div>
      </div>
<!--       <div class="cover-image" id="startchange" style="background-image : url('img/background2.png')"></div> -->
	  <div id="startchange" class="background-div">
          <video id="background-video" autoplay="true" loop="true" muted="">
              <source src="img/worktrip-bg.mp4" type="video/mp4">
          </video>
      </div>
      <div class="container">
        <div class="row">
          <div class="col-md-12 text-center">
            <h1 class="text-white">Larger Tax Returns</h1>
            <h2 contenteditable="false" class="text-white">For FAs</h2>
            <br>
            <br>
            <a id="btnScheduleCall2" class="btn btn-danger btn-lg ">Schedule a Call</a>
          </div>
        </div>
      </div>
    </div>
    <div class="section text-center" id="howworks">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="col-md-12 padding-vertical margin-vertical">
              <h1 class="text-center">How Work Trip Works</h1>
              <h3 class="text-center">A Five Minute Phone Call Can Mean a Larger Tax Refund</h3>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-4">
            <img src="img\schedule-service.png" class="center-block img-responsive image-service">
            <h3 class="text-center">1- Schedule a Call</h3>
            <p class="text-center padding-horizontal " style="font-size: 18px;">Let us quickly tell you how Easy Flight Attendant Taxes can be!</p>
          </div>
          <div class="col-md-4">
            <img src="img\dashboard-service.png" class="center-block img-responsive image-service">
            <h3 class="text-center">2- Use the Dashboard</h3>
            <p class="text-center padding-horizontal" style="font-size: 18px;">Upload important info to our simple dashboard and let us do the rest!</p>
          </div>
          <div class="col-md-4">
            <img src="img\review-service.png" class="center-block img-responsive image-service">
            <h3 class="text-center">3- Final Review</h3>
            <p class="text-center padding-horizontal" style="font-size: 18px;">Lets calculate your Refund! If you like what you hear, make a payment and you’re all set!</p>
          </div>
        </div>
      </div>
      <a id="btnScheduleCall3" class="btn btn-danger margin-vertical btn-lg ">Schedule a Call</a>
    </div>
    <div class="section bg-gray">
      <div class="container">
        <div class="row">
          <div class="col-md-6 work-text-content">
            <h1 class="text-danger">Why WorkTrip</h1>
            <div style="width: 100px;border-bottom: 2px solid #777; padding: 20px 0px 0px; margin-bottom: 20px;"></div>
            <p>Lorem ipsum dolor sit amet, mel tempor prodesset no. In agam eius maluisset
              ius, admodum molestiae scriptorem eum cu. Usu percipitur interesset te,
              has mutat nihil ei. Has tation bonorum persequeris id, labores iracundia
              et qui, et debet doctus vis. Quo cu esse natum numquam. Illud eruditi et
              est, et ridens partiendo duo. Qui ut enim
              <br>
              <br>
              <strong>Lorem ipsum dolor sit amet, mel tempor prodesset no. In agam eius maluisset
                ius, admodum molestiae scriptorem eum cu. Usu percipitur interesset te</strong>
              <br>
              <br>Lorem ipsum dolor sit amet, mel tempor prodesset no. In agam eius maluisset
              ius, admodum molestiae scriptorem eum cu. Usu percipitur interesset te,
              has mutat nihil ei. Has tation bonorum persequeris id, labores iracundia
              et qui, et debet doctus vis. Quo cu esse natum numquam. Illud eruditi et
              est, et ridens partiendo duo. Qui ut enim</p>
          </div>
          <div class="col-md-6 image-center-margin">
            <img src="img\macbook-dashboard.png" class="image-center img-responsive">
          </div>
        </div>
      </div>
    </div>
    <div class="section" id="perdiem">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <h1 class="text-center padding-vertical">Per Diem
              <br>
            </h1>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12">
            <p class="text-center text-white padding-vertical">Your Per Diem and Layover History can create Much Larger Tax Refunds!
              We Process your Per Diem &amp; Layovers Instantly and include it in our
              Flat Fee!&nbsp;</p>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 image-center hidden">
            <img src="img\dashboard-screenshot.png" class="img-responsive ">
          </div>
        </div>
      </div>
    </div>
    <div class="section" id="pricing">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <h1 class="text-center padding-vertical">Pricing</h1>
          </div>
        </div>
        <div class="row">
          <div class="col-md-4">
            <img src="img\flat-rate.png" class="center-block img-responsive image-service">
            <h3 class="text-center">One Flat Fee-$138</h3>
            <p class="text-center padding-horizontal " style="font-size: 18px;">Our low cost includes: A standard FA Federal Return, a State Return, and
              the processing of your Per Diem &amp; Layovers.</p>
          </div>
          <div class="col-md-4">
            <img src="img\refer.png" class="center-block img-responsive image-service">
            <h3 class="text-center">Refer a Co-Worker</h3>
            <p class="text-center padding-horizontal " style="font-size: 18px;">You both get $10 off! We’ll give you a unique code they enter upon payment,
              and then we’ll credit your account.</p>
          </div>
          <div class="col-md-4">
            <img src="img\discount.png" class="center-block img-responsive image-service">
            <h3 class="text-center">Get up to $60 off</h3>
            <p class="text-center padding-horizontal " style="font-size: 18px;">Referrals will be easy because our Service and Staff is Awesome! Keep
              referring and we’ll keep crediting!</p>
          </div>
        </div>
      </div>
    </div>
      <div id="jssor_1" style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 1300px; height: 500px; overflow: hidden; visibility: hidden;">
        <!-- Loading Screen -->
        <div data-u="loading" style="position: absolute; top: 0px; left: 0px;">
          <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
          <div style="position:absolute;display:block;background:url('img/loading.gif') no-repeat center center;top:0px;left:0px;width:100%;height:100%;"></div>
        </div>
        <div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 1300px; height: 500px; overflow: hidden;">
          <a data-u="any" href="http://www.jssor.com" style="display:none">Full Width Slider</a>
          <div data-p="225.00">
            <img data-u="image" src="img/testimonial2.jpg">
            <div style="position:absolute;top:300px;left:30px;width:480px;height:120px;z-index:0;font-size:30px;color:#ffffff;line-height:38px;">
              <blockquote>
                <p>Lorem ipsum dolor sit amet</p>
                <footer>Worktrip Customer</footer>
              </blockquote>
            </div>
            <!-- <div data-u="caption" data-t="0" style="position:absolute;top:120px;left:650px;width:470px;height:220px;z-index:0;">
                    <img style="position:absolute;top:0px;left:0px;width:470px;height:220px;z-index:0;" src="img/c-phone-horizontal.png" />
                    <div style="position:absolute;top:4px;left:45px;width:379px;height:213px;z-index:0; overflow:hidden;">
                        <img data-u="caption" data-t="1" style="position:absolute;top:0px;left:0px;width:379px;height:213px;z-index:0;" src="img/c-slide-1.jpg" />
                        <img data-u="caption" data-t="2" style="position:absolute;top:0px;left:379px;width:379px;height:213px;z-index:0;" src="img/c-slide-3.jpg" />
                    </div>
                    <img style="position:absolute;top:4px;left:45px;width:379px;height:213px;z-index:0;" src="img/c-navigator-horizontal.png" />
                    <img data-u="caption" data-t="3" style="position:absolute;top:740px;left:1600px;width:257px;height:300px;z-index:0;" src="img/c-finger-pointing.png" />
                </div> --></div>
          <div data-p="225.00" style="display:none;">
            <img data-u="image" src="img/testimonial1.jpg">
            <div style="position:absolute;top:300px;left:30px;width:480px;height:120px;z-index:0;font-size:30px;color:#ffffff;line-height:38px;">
              <blockquote>
                <p>Lorem ipsum dolor sit amet</p>
                <footer>Worktrip Customer</footer>
              </blockquote>
            </div>
          </div>
        </div>
        <!-- Bullet Navigator -->
        <div data-u="navigator" class="jssorb05" style="bottom:16px;right:16px;" data-autocenter="1">
          <!-- bullet navigator item prototype -->
          <div data-u="prototype" style="width:16px;height:16px;"></div>
        </div>
        <!-- Arrow Navigator -->
        <span data-u="arrowleft" class="jssora22l" style="top:0px;left:8px;width:40px;height:58px;" data-autocenter="2"></span>
        <span data-u="arrowright" class="jssora22r" style="top:0px;right:8px;width:40px;height:58px;" data-autocenter="2"></span>
      </div>
      <!-- #endregion Jssor Slider End -->
    </div>
    <div class="clearfix"></div>
    <div class="section hidden">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <h1 class="text-center">Contact</h1>
          </div>
        </div>
        <div class="row">
          <div class="col-md-6">
            <img class="img-responsive" src="http://maps.googleapis.com/maps/api/staticmap?center=Tombouctou,Mali&amp;zoom=12&amp;size=200x200&amp;sensor=false">
          </div>
          <div class="col-md-6">
            <div class=" bg-transparent">
              <h5 class="text-muted">Email:&nbsp;
                <a href="#">help@worktrip.com</a>
              </h5>
              <h5 class="text-muted">Phone:&nbsp;Worktrip
                <a href="#">(123-123-1234)</a>
              </h5>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="section hidden" style="padding-bottom: 0px;">
      <div class="row">
        <div class="col-md-12">
          <div class="col-md-12 image-cover">
            <div class="row">
              <div class="col-md-6 text-center jumbotron " style="background: transparent;">
                <h2 contenteditable="false" class="text-center text-danger">Question? Let's Schedule a Call</h2>
              </div>
              <div class="col-md-6 text-center jumbotron " style="background: transparent;">
                <a class="btn btn-danger btn-lg" style="margin-top: 10px;">Schedule a Call</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="clearfix"></div>
    <footer class="section section footer-bg" id="contact">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <h1 class="text-muted">WorkTrip</h1>
            <div class=" bg-transparent">
              <h5 class="text-muted">Are you a client who needs support?&nbsp;
                <a href="#">help@worktrip.com</a>
              </h5>
              <h4 class="text-muted">Location</h4>
              <p class="text-muted">Boulder, CO</p>
            </div>
          </div>
          <div class="col-md-6">
            <h1 class="text-muted">Contact Us</h1>
            <div class=" bg-transparent">
              <h5 class="text-muted">Email:&nbsp;
                <a href="#">help@worktrip.com</a>
              </h5>
              <h5 class="text-muted">Phone:&nbsp;Worktrip
                <a href="#">(123-123-1234)</a>
              </h5>
            </div>
          </div>
        </div>
        <hr>
        <div class="row">
          <div class="col-md-12">
            <div class="col-md-6">
              <h5 class="text-muted">Copyright&nbsp;©&nbsp;2017 worktrip. All Rights Reserved.
                <a href="#">Privacy&nbsp;&nbsp;&nbsp;&nbsp;</a>
                <a href="#">Terms of Use</a>
              </h5>
            </div>
            <div class="col-md-6">
              <div class="row">
                <div class="col-md-12 text-right" style="margin-top:7px;">
                  <a href="#"><i class="fa fa-fw fa-instagram fa-lg text-inverse"></i></a>
                  <a href="#"><i class="fa fa-fw fa-lg fa-twitter text-inverse"></i></a>
                  <a href="#"><i class="fa fa-facebook fa-fw fa-lg text-inverse"></i></a>
                  <a href="#"><i class="fa fa-fw fa-github fa-lg text-inverse"></i></a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </footer>





<form id="letsTalkForm" action="#">
         <div class="lets-talk-container letsTalk" style="z-index: 999; display: none;" >
            <div class="lets-talk-inner-wrapper">
            <button type="button"  class="close cancel-btn" data-dismiss="div.getStartedDiv">×</button>
               <h2 class="lets-talk-header">Let's Talk</h2>
               <div class=" input-group">
                  <span>First Name</span><br>
                  <input type="text" id="letsTalkFirstName" style="width: 100% !important;"  class="form-control" name="firstName" >
               </div>
               <div class=" input-group">
                  <span>Last Name</span><br>
                  <input type="text" style="width: 100% !important;" id="letsTalkLastName" class="field-full-width form-control" name="lastName" >
               </div>
               <div class="row" id="mobile-phone-fields">
                  <div class="col-xs-12 col-md-12">
                     <div class="field input-group ">
                        <span>Mobile Phone Number</span><br>
                        <div class="field  col-xs-4  col-md-3">
                           <input id="phone1" type="tel" name="phone"  class="field-full-width form-control" value="" size="3" maxlength="3"  title="">
                           
                        </div>
                        <div class="field phone-field phone-field-margin col-xs-4 col-md-3">
                           <input id="phone2" type="tel" name="phone" class="form-control" value="" size="3" maxlength="3"  title="">
                        </div>
                        <div class="field phone-field phone-field-margin col-xs-3 col-md-3">
                           <input id="phone3" type="tel" name="phone" class="form-control" value="" size="3" maxlength="4"  title="">
                        </div>
                        
                        <div class="field col-xs-12 col-md-3">
                           <button class="btn btn-success btn-sm"  id="letsTalkVerify"  href="#">Send SMS</button>
                        
                        </div>
                        <!-- <div class="field col-xs-3 col-md-2" >
                           </div> -->
                     </div>
                  </div>
               </div>
               <div class="phoneCodeDiv input-group text-center hidden">
                           <div id="afterCode" class=" text-center hidden col-md-12"><span style="color: #999; margin: 5px auto; font-size: 20px;">Please enter the verification code sent to your phone.</span>
                          </div>

                           <div class="row">
                           <div class="field col-xs-6 col-md-offset-3 col-md-6">
                              <input type="phone" style="width: 100% !important;" name="code" id="phoneCode"  class="field-full-width form-control" value="" size="4" maxlength="4"  title="">
                           </div>
                           </div>

                           
                           <!-- <img src="img/success.png" id="imgCodeSuccess" class="hidden" style="width: 20px;margin-top: 15px;"> -->
                             <div class="row">
                              <button type="submit" class="btn btn-warning btn-sm letsTalkSubmit"   id="letsTalkNext">Verify</button> 
                             </div> 
                             <div id="loadingAnim" class="row text-center hidden">
                               <img src="img/loading.gif"  width="" style="width: 20px; margin-top: 12px;" />
                             </div> 
                        </div>
                       <div class="clearfix"></div>
                       <div class="row text-center" style="padding: 0px 15px;">
                       <div id="beforeCode" class="col-xs-12 text-center " style="padding-bottom: 10px;"><span style="color: #5a5a5a; font-size: 20px;">We'll text you a unique PIN to verify your Phone number.</span></div>
               
               <div>
                  <div class="row"><span style="color: #999;     margin-top: 10px; font-weight: bold;">(Step 1 of 2)</span></div>
                  <div class="row text-right" style="padding: 0px 40px; margin: 10px 7px -15px;"><p>already have an account? <a id="login" href="#"> Sign in</a></p></div>
               </div>
            </div>
         </div>
       </div>
</form>

<div class="clearfix"></div>


<form id="signupForm" action="https://www.facebook.com/v2.4/dialog/oauth/?">
         <div class="lets-talk-container letsTalkNext" style="z-index: 999; display: none;" >
            <button type="button" class="close" data-dismiss="alert">&times;</button>
            <div class="lets-talk-inner-wrapper">
            <button type="button"  class="close cancel-btn" data-dismiss="div.getStartedDiv">×</button>
               <h2 class="lets-talk-header">Setup a Login</h2>
               <div class="row text-center">
                  <h5  style="color: #152D58; margin-bottom:5px;padding: 5px 0px;" id="whyInfo" >Why?</h5>
                  <button id="signupFacebookButton" style="margin-top:10px;margin-bottom: 20px; color: #fff;" class="btn btn-default text-center fb-button"> f | Login with Facebook </button>
                   <input type="hidden" name="client_id" value="975815735895755" />
                   <input type="hidden" name="redirect_uri" value="http://localhost:50082/Default.aspx" />
                   <input type="hidden" name="response_type" value="code" />
                   <input type="hidden" name="state" value="1" />
                   <input type="hidden" name="signup" value="1" />
               </div>
               <p class="subtitle fancy"><span>Or</span></p>
               <div class=" input-group" style="margin-top: 20px;">
                  <span>Email</span><br>
                  <input id="signupEmail" type="email" style="width: 100% !important;"  class="form-control" >
               </div>
               <div class=" input-group">
                  <span>Password</span><br>
                  <input type="password" style="width: 100% !important;"  id="signupPassword1" class="field-full-width form-control" minlength="8" >
               </div>
               <div class=" input-group">
                  <span>Confirm Password</span><br>
                  <input type="password" style="width: 100% !important;" id="signupConfirmPassword"  class="field-full-width form-control" minlength="8" >
               </div>
               <label class="checkbox-inline" ><input  type="checkbox" id="cbTerms" value=" ">I agree with Terms of Use</label>
               <!-- <br>
                  <div class="row text-right" style="float: right;">
                  <a class="image-button-over letsTalkSubmit "   href="#">Next</a>
                  </div> -->  
               <div class="clearfix"></div>
               <div class="row text-right" style="padding: 0px 15px;">
                  <span style=" color: #999;line-height: 36px; padding-right: 10px;">(Step 2 of 2)</span>
                  <button type="submit" id="letsTalkFormSubmit" class="btn btn-primary" style="float:right; ">Submit  </button>
               </div>
            </div>
         </div>
      </form>



<form id="loginForm" action="https://www.facebook.com/v2.4/dialog/oauth/?">
         <div class="lets-talk-container login" style="z-index: 999; display: none;" >
            <button type="button" class="close" data-dismiss="alert">&times;</button>
            <div class="lets-talk-inner-wrapper">
            <button type="button"  class="close cancel-btn" data-dismiss="div.getStartedDiv">×</button>
               <h2 class="lets-talk-header">Log In</h2>
               <div class="row text-center">
                  <!-- <h5  style="color: #152D58; margin-bottom:5px;padding: 5px 0px;" id="whyInfo" >Why?</h5> -->
                  <button id="loginFacebookButton" style="margin-top:10px; margin-bottom: 20px;  color: #fff;" class="btn btn-default text-center fb-button" > f | Login with Facebook </button>
                   <input type="hidden" name="client_id" value="975815735895755" />
                   <input type="hidden" name="redirect_uri" value="http://localhost:60333/Default.aspx" />
                   <input type="hidden" name="response_type" value="code" />
                   <input type="hidden" name="state" value="1" />
                  <p class="subtitle fancy"><span>Or</span></p>
               </div>
               <div class=" input-group" style="margin-top: 20px;">
                  <span>Email</span><br>
                  <input id="loginEmail" type="email" style="width: 100% !important;"  class="form-control" >
               </div>
               <div class=" input-group">
                  <span>Password</span><br>
                  <input type="password" style="width: 100% !important;"  id="loginPassword" class="field-full-width form-control" minlength="8" >
               </div>
               

               <div class="clearfix"></div>
               <div class="row text-right" style="padding: 0px 15px;">
                  <!-- <span style=" color: #999;line-height: 36px; padding-right: 10px;">(Step 2 of 2)</span> -->
                  <button type="submit" id="loginFormSubmit" class="btn btn-primary" style="float:right; "> Log In  </button>
               </div>
               <p>don't have an account? <a id="signup" href="#"> Sign up</a></p>
            </div>
         </div>
      </form>


      <div class="lets-talk-container verifyEmail" style="display: none;">
         <div class="lets-talk-inner-wrapper">
         <button type="button"  class="close cancel-btn" data-dismiss="div.getStartedDiv">×</button>
            <h2 class="lets-talk-header">Verify Email</h2>
            <div class="input-field">
               <span>Email</span><br>
               <input type="email"  style="width: 100% !important;"  class="form-control" name="email" >
            </div>
            <div class="input-field">
               <span>Password</span><br>
               <input type="password" style="width: 100% !important;"  class="form-control" name="password" >
            </div>
            <div class="input-field">
               <span>Confirm Passowrd</span><br>
               <input type="password" style="width: 100% !important;" minlength="8" class="form-control" name="confirmPassword" >
            </div>
            <br>
            <a class="image-button-over" id="verifyEmailSubmit"  href="#">Verify</a>
         </div>
      </div>


<!-- 
      <form id="loginForm" action="#">
         <div class="lets-talk-container login" style="display: none;" >
            <div class="lets-talk-inner-wrapper">
            <button type="button"  class="close cancel-btn" data-dismiss="div.getStartedDiv">×</button>
               <h2 class="lets-talk-header">Login</h2>
               <div class=" input-group">
                  <span>Email</span><br>
                  <input type="email" style="width: 100% !important;"  class="form-control" name="email" >
               </div>
               <div class=" input-group">
                  <span>Password</span><br>
                  <input type="password" style="width: 100% !important;" class="field-full-width form-control" name="password" >
               </div>
               <br>
               <div class="clearfix"></div>
               <div class="row text-right" style="padding: 0px 15px;">
                  <button type="submit" id="loginSubmit" class="btn btn-danger" style="float:right; "> Log In  </button>
               </div>
               <p>don't have an account? <a id="signup" href="#"> Sign up</a></p>
            </div>
         </div>
         </div>
      </form> -->



      <div class="lets-talk-container complete" style="display: none;" >
         <div class="lets-talk-inner-wrapper">
         <button type="button"  class="close cancel-btn" data-dismiss="div.getStartedDiv">×</button>
            <h2 class="lets-talk-header">Complete</h2>
            <br>
            <a class="image-button-over" style="background-color: #1EBB4E; color: #fff;" href="#">&#10004;</a>
         </div>
      </div>
      <div class="lets-talk-container callYou" style="display: none;">
         <div class="lets-talk-inner-wrapper">
         <button type="button"  class="close cancel-btn" data-dismiss="div.getStartedDiv">×</button>
            <h2 class="lets-talk-header">We'll Call You</h2>
            <span class="confirm-notification">Check your inbox for more info.</span>
         </div>
      </div>
      <div class="lets-talk-container emailSent" style="display: none;" >
         <div class="lets-talk-inner-wrapper">
         <button type="button"  class="close cancel-btn" data-dismiss="div.getStartedDiv">×</button>
            <h2 class="lets-talk-header">Email Sent</h2>
            <span class="confirm-notification">Check your inbox and verify your email.</span>
         </div>
      </div>
      <div id="message-why" style="position: fixed;display:none; z-index:1000;">
         <div class="alert alert-info" style="width: 250px; ">
            <p><strong>Info!</strong> Please add about "why? :)" </p>
         </div>
      </div>

    <script type="text/javascript" src="js\app.js"></script>
    <script type="text/javascript" src="js\form.validate.js"></script>

</body></html>