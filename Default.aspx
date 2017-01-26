<%@ Page Language="C#" Debug="true" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<head>
    <meta http-equiv="content-type" content="text/html;charset=UTF-8">

    <meta charset="utf-8">

    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
    <!-- <link href="css/layout.min.css" rel="stylesheet"> -->


    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
</head>
<body style="background-color: #f1f1f1;">

<div class="nav-bar-container container">

<div class="navbar navbar-inverse navbar-fixed-top nav-bar-inner">
  <div class="container navbar-doublerow-fix">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" style="padding:20px !important;" href="index.html">
        <img src="img\logo.png" width="150px"  alt="WorkTrip">
      </a>
    </div>
    <div class="collapse navbar-collapse navbar-right">
      <ul class="nav navbar-nav navbar-ul">
          <li  class="navbar-left dropdown"  ><a id="btnUser" class="same-height dropdown-toggle" data-toggle="dropdown" href="#">Settings <span class="caret"></span>    </a>
               <ul class="dropdown-menu" style="background: #152D58;">
                    <li class="borderB"><a style="color: #fff" href="#">Payment Info</a></li>
                    <li ><a href="#" style="color: #fff">Sign out</a></li>
               </ul>
           </li>
          <li><a class="same-height getStarted" id="register" href="#">Refer a Friend</a></li>
        
      </ul>
      
    </div><!--/.nav-collapse -->
  </div>
</div>
</div>
<div class="clear-fix"></div>


    <div  class="container-fluid container-dashboard" >
       
        <div class="left-menu" >
             <div style="height: 100px;"  id="options" >
             <span class="menu-toggle-dashboard menu ">Menu<span class="caret"></span></span>
             <span class="menu-toggle-dashboard menu-dashboard">Dashboard</span>
            </div>








        <div class="left-menu-collapse ">
            <ul  >
                <!-- <li class="dashboard-button-container">
                    <div class="btn-container" style="background: #E74139;">
                    <div class="dashboard-icon-cotainer">
                        <img src="img/dashboard.png" />
                        </div>
                    <div class="dashboard-button-name">
                        <a id="dashboard">Dashboard</a>
                        </div>    
                        
                    </div>
                </li> -->
                
                
                <li class="dashboard-button-container">
                    <div class="btn-container" style="background: #E74139;">
                    <div class="dashboard-icon-cotainer">
                        <img src="img/user.png" />
                        </div>
                    <div class="dashboard-button-name">
                        <a id="pInfo">Personal Info</a>
                        </div>    
                        
                    </div>
                </li>
                
                
                <li class="dashboard-button-container">
                    <div class="btn-container">
                    <div class="dashboard-icon-cotainer">
                        <img src="img/file.png" />
                        </div>
                    <div class="dashboard-button-name">
                        <a id="tDoc">Tax Documents</a>
                        </div>    
                        
                    </div>
                </li>
                
                
                <li class="dashboard-button-container">
                    <div class="btn-container">
                    <div class="dashboard-icon-cotainer">
                        <img src="img/Layover.png" />
                        </div>
                    <div class="dashboard-button-name">
                        <a id="wSch">Layovers</a>
                        </div>    
                        
                    </div>
                </li>
                
                <li class="dashboard-button-container">
                    <div class="btn-container">
                    <div class="dashboard-icon-cotainer">
                        <img src="img/Question.png" />
                        </div>
                    <div class="dashboard-button-name">
                        <a id="tQuest">Tax Question</a>
                        </div>    
                        
                    </div>
                </li>

                <li class="dashboard-button-container">
                    <div class="btn-container">
                    <div class="dashboard-icon-cotainer">
                        <img src="img/money.png" />
                        </div>
                    <div class="dashboard-button-name">
                        <a id="mPay">Make a Payment</a>
                        </div>    
                        
                    </div>
                </li>
                
                
                
            </ul>

            </div>     
        </div>
        <div class="top-menu" >
            <div class="row">
           <!--  <div class="col-md-3 col-sm-12">
            <div  class="taxes-dropdown-container dropdown ">
                   <a class="same-height dropdown-toggle" data-toggle="dropdown" href="#"><span id="taxYear">2016</span> Taxes <span class="caret"></span>    </a>
                   <ul class="dropdown-menu" style="background: #152D58;">
                        <li class="borderB"><a style="color: #fff" href="#">2016</a></li>
                        <li class="borderB"><a style="color: #fff" href="#">2015</a></li>
                        <li><a href="#" style="color: #fff">2014</a></li>
                   </ul>
               </div>     
                    
            </div > -->
            <div class="container ">
                <ul class="nav navbar-nav" style="width: 100% !important;">
                  <!-- <li  class="navbar-left dropdown custom-width taxYear-container"><a  class="same-height dropdown-toggle" data-toggle="dropdown" href="#"><span id="taxYear">2016</span>  Taxes<span class="caret"></span>    </a>
               <ul class="dropdown-menu " style="background: #152D58;">
                    <li class="borderB"><a style="color: #fff" href="#">2016</a></li>
                    <li ><a href="#" style="color: #fff">2015</a></li>
                    <li ><a href="#" style="color: #fff">2014</a></li>
               </ul>
           </li> -->


            <li class="dropdown custom-width taxYear-container" ><div class="dropdown">
  <button class="btn btn-primary dropdown-toggle" type="button" style="background: #152D58;" data-toggle="dropdown"><span id="taxYear">2016</span> taxes
  <span class="caret"></span></button>
  <ul class="dropdown-menu dropdown-menu-taxes" style="background: #152D58; position: absolute;">
                    <!-- Please add this class="dropdown-a" to every new item -->
                    <li ><a class="dropdown-a" style="color: #fff" href="#">2016</a></li>
                    <li ><a class="dropdown-a" href="#" style="color: #fff">2015</a></li>
                    <li ><a class="dropdown-a" href="#" style="color: #fff">2014</a></li>
  </ul>
</div>
</li>
                  <li class="top-menu-steps-items">
                    
                      <div class="guide-container">
                          <div class="guide-message">
                              <img src="img/success.png" />  
                              <p>Check Personal Info</p>
                          </div>
                      </div>


                  </li>

                <li class="top-menu-steps-items">
                    
                      <div class="arrow-right"></div>

                  </li>
                <li class="top-menu-steps-items">
                    
                      <div class="guide-container">
                          <div class="guide-message">
                              <img src="img/error.png" />  
                              <p>Upload Documents</p>
                          </div>
                      </div>


                  </li>
                

                  <li class="top-menu-steps-items"><div class="arrow-right"></div></li>

              
                <li class="top-menu-steps-items">
                    
                      <div class="guide-container">
                          <div class="guide-message">
                              <img src="img/success.png" />  
                              <p>Upload Layovers</p>
                          </div>
                      </div>


                  </li>

                  <li class="top-menu-steps-items"><div class="arrow-right"></div></li>

                  <li class="top-menu-steps-items">
                    
                      <div class="guide-container">
                          <div class="guide-message">
                              <img src="img/success.png" />  
                              <p>Make a Payment</p>
                          </div>
                      </div>


                  </li>
                  <li class="top-menu-steps-items"><div class="arrow-right"></div></li>

                <li class="top-menu-steps-items">
                    
                      <div class="guide-container">
                          <div class="guide-message">
                              <img src="img/error.png" />  
                              <p>Final Review</p>
                          </div>
                      </div>


                  </li>
                

                    

                    </ul>
                </div>
            </div>
        </div>
        <div class="content-center"  >
            



    <div class="make-payment-container" style="display: none;">
      <h2>Coming Soon</h2>
    </div>

  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12  formContainer" style="display: none;" id="tax-question"  >


      <h2 class="lets-talk-header">Tax Question</h2>

    <div class="panel with-nav-tabs panel-default">
            <div class="panel-heading">
                    <ul class="nav nav-tabs">
                        <li class="active" id="tab1"><a href="#tab1primary"  data-toggle="tab">Answer Questions</a></li>
                        <li id="tab2"><a href="#tab2primary" data-toggle="tab">Ask a Question</a></li>
                        
                    </ul>
            </div>
    </div>
<div class="panel-body">
                    <div class="tab-content">

<form id="answers-form" method="post" action="#" role="form">

                        <div class="tab-pane fade in active" id="tab1primary">
                          
                              <div class="field col-lg-offset-3 col-md-offset-3 col-lg-6 col-md-6 col-sm-12 col-xs-12" >
             <span>1. How many days were you in training and away from home for Delta?</span>
             <div class="input-group">
             <span class="input-group-addon">#</span>
              <input id="question1" placeholder="Value" type="text" class="form-control" name="info">
              <button class="btn btn-primary">
                  <span class="glyphicon glyphicon-edit"></span>
              </button>
            </div>  
      </div>  
      <div class="field col-lg-offset-3 col-md-offset-3 col-lg-6 col-md-6 col-sm-12 col-xs-12" >
             <span>2. How much cash do you tip your driver on layovers ($1, $2, $5, etc)?</span>
             <div class="input-group">
              
              <span class="input-group-addon">$</span>
              <input id="question2" placeholder="Value" type="text" class="form-control" name="info">
              <button class="btn btn-primary">
                  <span class="glyphicon glyphicon-edit"></span>
              </button>
            </div>  
      </div>  
      <div class="field col-lg-offset-3 col-md-offset-3 col-lg-6 col-md-6 col-sm-12 col-xs-12" >
             <span>3. Total money spent on cabs, trains, ubers, etc while away on layovers?</span>
             <div class="input-group">
              
              <span class="input-group-addon">$</span>
              <input id="question3" placeholder="Value" type="text" class="form-control" name="info">
              <button class="btn btn-primary">
                  <span class="glyphicon glyphicon-edit"></span>
              </button>
            </div>  
      </div>  
      <div class="field col-lg-offset-3 col-md-offset-3 col-lg-6 col-md-6 col-sm-12 col-xs-12" >
             <span>4. Currency exchange fees, atm, or foriegn fees on debit/credit cards?</span>
             <div class="input-group">
              
              <span class="input-group-addon">$</span>
              <input id="question4" placeholder="Value" type="text" class="form-control" name="info">
              <button class="btn btn-primary">
                  <span class="glyphicon glyphicon-edit"></span>
              </button>
            </div>  
      </div>  
      <div class="field col-lg-offset-3 col-md-offset-3 col-lg-6 col-md-6 col-sm-12 col-xs-12" >
             <span>5. Uniform fees and any leggings/pantyhose expenses?</span>
             <div class="input-group">
              
              <span class="input-group-addon">$</span>
              <input id="question5" placeholder="Value" type="text" class="form-control" name="info">
              <button class="btn btn-primary">
                  <span class="glyphicon glyphicon-edit"></span>
              </button>
            </div>  
      </div>  
      <div class="field col-lg-offset-3 col-md-offset-3 col-lg-6 col-md-6 col-sm-12 col-xs-12" >
             <span>6. Laundry/Dry Cleaning costs for Uniforms?</span>
             <div class="input-group">
              
              <span class="input-group-addon">$</span>
              <input id="question6" placeholder="Value" type="text" class="form-control" name="info">
              <button class="btn btn-primary">
                  <span class="glyphicon glyphicon-edit"></span>
              </button>
            </div>  
      </div>  
      <div class="field col-lg-offset-3 col-md-offset-3 col-lg-6 col-md-6 col-sm-12 col-xs-12" >
             <span>7. Flight gear/Luggage?</span>
             <div class="input-group">
              
              <span class="input-group-addon">$</span>
              <input id="question7" placeholder="Value" type="text" class="form-control" name="info">
              <button class="btn btn-primary">
                  <span class="glyphicon glyphicon-edit"></span>
              </button>
            </div>  
      </div>  
      <div class="field col-lg-offset-3 col-md-offset-3 col-lg-6 col-md-6 col-sm-12 col-xs-12" >
             <span>8. iPad, Cell Phone purchase, etc? % Used for work?</span>
             <div class="input-group">
              
              <span class="input-group-addon">$</span>
              <input id="question8" placeholder="Value" type="text" class="form-control" name="info">
              <button class="btn btn-primary">
                  <span class="glyphicon glyphicon-edit"></span>
              </button>
            </div>  
      </div>  
      <div class="field col-lg-offset-3 col-md-offset-3 col-lg-6 col-md-6 col-sm-12 col-xs-12" >
             <span>9. Total Cell Phone Bill for the year? % Used for work?</span>
             <div class="input-group">
              
              <span class="input-group-addon">$</span>
              <input id="question9" placeholder="Value" type="text" class="form-control" name="info">
              <button class="btn btn-primary">
                  <span class="glyphicon glyphicon-edit"></span>
              </button>
            </div>  
      </div>  
      <div class="field col-lg-offset-3 col-md-offset-3 col-lg-6 col-md-6 col-sm-12 col-xs-12" >
             <span>10. Total internet bill? % Used for work?</span>
             <div class="input-group">
              
              <span class="input-group-addon">$</span>
              <input id="question10" placeholder="Value" type="text" class="form-control" name="info">
              <button class="btn btn-primary">
                  <span class="glyphicon glyphicon-edit"></span>
              </button>
            </div>  
      </div>  
       <div class="field col-lg-offset-3 col-md-offset-3 col-lg-6 col-md-6 col-sm-12 col-xs-12" >
             <span>11. Visas, Passport fees, and any misc items needed for work?</span>
             <div class="input-group">
              
              <span class="input-group-addon">$</span>
              <input id="question11" placeholder="Value" type="text" class="form-control" name="info">
              <button class="btn btn-primary">
                  <span class="glyphicon glyphicon-edit"></span>
              </button>
            </div>  
      </div>  
       <div class="field col-lg-offset-3 col-md-offset-3 col-lg-6 col-md-6 col-sm-12 col-xs-12" >
              <span>12. Total for all other Unreimbursed Employee expenses?</span>
             <div class="input-group">
             
               <span class="input-group-addon">$</span>
              <input id="question12" placeholder="Value" type="text" class="form-control" name="info">
              <button class="btn btn-primary ">
                  <span class="glyphicon glyphicon-edit"></span>
              </button>
            </div>  
      </div>


        <div class="submit-button col-md-2  col-md-offset-8">

  <input id="taxQuestionSubmitButton" type="submit" class="btn btn-primary" value="submit"  />

        </div>
        </form>

    </div>
                        <div class="tab-pane fade" id="tab2primary">

                          <form id="contact-form" method="post" action="#" role="form">

    <div class="messages"></div>

    <div class="controls">
<div class="field col-lg-offset-3 col-md-offset-3 col-lg-6 col-md-6 col-sm-12 col-xs-12" >
             <span>First Name</span>
             <div class="input-group">
              <input id="messageFirstName" placeholder="First Name" type="text" class="form-control" name="info">
              <button class="btn btn-primary">
                  <span class="glyphicon glyphicon-edit"></span>
              </button>
            </div>  
      </div>  
      <div class="field col-lg-offset-3 col-md-offset-3 col-lg-6 col-md-6 col-sm-12 col-xs-12" >
             <span>Last Name</span>
             <div class="input-group">
              
              
              <input id="messageLastName" placeholder="Last Name" type="text" class="form-control" name="info">
              <button class="btn btn-primary">
                  <span class="glyphicon glyphicon-edit"></span>
              </button>
            </div>  
      </div>  
      <div class="field col-lg-offset-3 col-md-offset-3 col-lg-6 col-md-6 col-sm-12 col-xs-12" >
             <span>Email</span>
             <div class="input-group">
              <input id="messageEmail" placeholder="Email" type="text" class="form-control" name="info">
              <button class="btn btn-primary">
                  <span class="glyphicon glyphicon-edit"></span>
              </button>
            </div>  
      </div>  
            <div class="field col-lg-offset-3 col-md-offset-3 col-lg-6 col-md-6 col-sm-12 col-xs-12" >
             <span>Phone</span>
             <div class="input-group">
              <input id="messagePhone" placeholder="Phone" type="text" class="form-control" name="info">
              <button class="btn btn-primary">
                  <span class="glyphicon glyphicon-edit"></span>
              </button>
            </div>  
      </div>  
<div class="field col-lg-offset-3 col-md-offset-3 col-lg-6 col-md-6 col-sm-12 col-xs-12" >
             <span>Message</span>
             <div class="input-group">
              <textarea id="messageMessage" placeholder="Message" type="text" rows="4" class="form-control" name="info"> </textarea>
              <button class="btn btn-primary">
                  <span class="glyphicon glyphicon-edit"></span>
              </button>
            </div>  
      </div>  

             <div class="submit-button col-md-2  col-md-offset-8">

  <input id="sendMessageSubmitButton" type="submit" class="btn btn-primary" value="submit"  />

        </div>
        
        </div>
        
    

</form>

                        </div>
                        
                    </div>
                </div>
      <!--   <ul class="nav nav-tabs">
            <li class="active"><a href="#">Answer Questions</a></li>
            <li><a href="#">Ask a Question</a></li>
        </ul>
 -->
<!--       <h2> <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#qSection1">Ask a Question</button></h2>
 -->      
      <!-- <div id="qSection1" class="collapse"> -->
        
      <!-- </div> -->
      
        
  </div>


  

<div class="lets-talk-container2  formContainer" id="make-payment" style="display: none;"  >

<div class="lets-talk-inner-wrapper lets-talk-inner-wrapper2">
  <h2>Coming Soon</h2>


        </div>
        
        
    
    </div>
  



  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12  formContainer" id="Personal-info"  >


  <h2 class="lets-talk-header">Personal Info</h2>
  <div class="col-lg-offset-3 col-md-offset-3 col-lg-6 col-md-6 col-sm-12 col-xs-12" >
  <div class="field input-group">
    <span>First Name</span><br>
    <input id="personalInfoFirstName" type="text" class=" col-10 form-control" name="firstName"><button class="btn btn-primary">
        <span class="glyphicon glyphicon-edit"></span>
        
    </button>
  </div>
  <div class="field input-group">
    <span>Middle Name</span><br>
    <input id="personalInfoMiddleName" type="text" class="form-control" name="firstName"><button class="btn btn-primary">
        <span class="glyphicon glyphicon-edit"></span>
        
    </button>
  </div>
  <div class="field input-group">
    <span>Last Name</span><br>
    <input id="personalInfoLastName" type="text" class="form-control" name="lastName">
    <button class="btn btn-primary">
        <span class="glyphicon glyphicon-edit"></span>
        
    </button>
  </div>
  <div class="field input-group">
    <span>Base Airport 1st Day of 2016</span><br>
    <input id="personalInfoAirport" type="text" class="form-control" name="info">
    <button class="btn btn-primary">
        <span class="glyphicon glyphicon-edit"></span>
        
    </button>
  </div>
  
  <div class="field input-group">
    <span>Email</span><br>
    <input id="personalInfoEmail" type="text" class="form-control" name="info">
    <button class="btn btn-primary">
        <span class="glyphicon glyphicon-edit"></span>
        
    </button>
  </div>
  <div class="field input-group">
    <span>Phone Number</span><br>
    <input id="personalInfoPhone" type="text" class="form-control" name="info">
    <button class="btn btn-primary">
        <span class="glyphicon glyphicon-edit"></span>
        
    </button>
  </div>
  <div class="field input-group">
    <span>Date of Birth</span><br>
    <input id="personalInfoDateOfBirth" class="form-control" type="date" value="2011-08-19" id="example-date-input">
    <button class="btn btn-primary">
        <span class="glyphicon glyphicon-edit"></span>
        
    </button>
  </div>
  <div class="field input-group">
    <span>Current Tax Address: Street, City, State, Zip Code</span><br>
    <input id="personalInfoAddress" type="text" class="form-control" name="airport">
    <button class="btn btn-primary">
        <span class="glyphicon glyphicon-edit"></span>
        
    </button>

  </div>
  </div>
  <br>
  
     <div class="submit-button col-md-2  col-md-offset-8">

  <input id="personalInfoSubmitButton" type="submit" class="btn btn-primary" value="submit"  />

        </div>
        
    
    </div>
    
    
  <div class=" jumbotron file-upload-container" style="display: none;" id="work-schedule-container"  >


    <div class="row header">
      
          <h3 class="text-center">Please Upload .CSV Files Downloaded from Your Crew Portal for All of the Months</h3><h4 class="text-center">
You Worked as a Flight Attendant</h4>

    </div>
    

      <div class="panel panel-default">
        <div class="panel-body">
          <!-- Standar Form -->
          <!-- Drop Zone -->
          <div class="upload-drop-zone-work" id="drop-zone">
            Just drag and drop files here
          </div>
          
          
          <form action="" method="post" enctype="multipart/form-data" id="js-upload-form-work">
            <div class="form-inline">
              <div class="form-group">
                <!--<input type="file" name="files[]" id="js-upload-files" multiple accept=".csv">-->
              </div>
              <!--<button type="submit" class="btn btn-sm btn-primary" id="js-upload-submit">Upload files</button>-->
            </div>
          </form>

          <!-- Progress Bar 
          <div class="progress">
            <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
              <span class="sr-only">60% Complete</span>
            </div>
          </div>-->

          <!-- Upload Finished -->
          <div class="js-upload-finished">
            <h3>Processed files:</h3>
            <div class="list-group">
              
            </div>
          </div>
        </div>
      </div>
    </div> <!-- /container -->
    <div class=" jumbotron file-upload-container" id="tax-documents-container"  style="display: none;">

    <div class="row header" >
      
          <h3 class="text-center">Please Upload Pictures of Your Tax Documents Here</h3><h4 class="text-center">
(W2’s, 1099-Misc, Healthcare, Bank Interest, Student Loans, Etc)</h4>

    </div>

      <div class="panel panel-default">
        
        <div class="panel-body">

          <!-- Standar Form -->

          <!-- Drop Zone -->
          
          <div class="upload-drop-zone-work" id="drop-zone-work">
            Just drag and drop files here
          </div>
          
          
          <form action="" method="post" enctype="multipart/form-data" id="js-upload-form">
            <div class="form-inline">
              <div class="form-group">
                <!--<input type="file" name="files[]" id="js-upload-files" multiple accept="image/*, .doc, .txt"> -->
              </div>
              <!-- <button type="submit" class="btn btn-sm btn-primary" id="js-upload-submit">Upload files</button> -->
            </div>
          </form>

          <!-- Progress Bar
          <div class="progress">
            <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
              <span class="sr-only" style="color: white;">60% Complete</span>
            </div>
          </div> -->

          <!-- Upload Finished -->
          <div class="js-upload-finished">
            <h3>Processed files:</h3>
            <div class="list-group">
              
            </div>
          </div>
        </div>
      </div>
    </div> <!-- /container -->

</div>
    




<div class="lets-talk-container getStartedDiv" style="z-index: 999; display: none;" >

<div class="lets-talk-inner-wrapper">
<button type="button"  class="close cancel-btn" data-dismiss="div.getStartedDiv">×</button>
  <h2 class="lets-talk-header">Refer a Friend</h2>
  
  <div class="field input-group">
    <span>Email</span><br>
    <input type="text" class="form-control" name="lastName">
    <button class="btn btn-primary">
        <span class="glyphicon glyphicon-edit"></span>
        
    </button>
  </div>
 
  <br>
  <a class="image-button-over" id="letsTalkSubmit"  href="#">Refer</a>


</div>

</div>





<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> 
 <!-- <script src="js/bootstrap.js"></script> -->
 <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>



<script type="text/javascript">
	//Fill data
    $(document).ready(function () {
        $.ajax({
            type: "POST", // Can be GET or POST
            url: "Default.aspx/GetFirstName", // Call the function TestAction in DataController.cs
            contentType: "application/json; charset=utf-8",
            success: function (reponse) { // data that we get back from the server
                if (reponse.d != "Fail") {
                    $("#personalInfoFirstName").val(reponse.d);
                }
                else {
                    
                }
            },
            error: function (response) { // in case of exception from server
            },
            complete: function (response) { // to be run after success and error (kinda like finally cause in a throw-catch-finally)
            }
        });

            $.ajax({
                type: "POST", // Can be GET or POST
                url: "Default.aspx/GetMiddleName", // Call the function TestAction in DataController.cs
                contentType: "application/json; charset=utf-8",
                success: function (reponse) { // data that we get back from the server
                    if (reponse.d != "Fail") {
                        $("#personalInfoMiddleName").val(reponse.d);
                    }
                    else {
                    
                    }
                },
                error: function (response) { // in case of exception from server
                },
                complete: function (response) { // to be run after success and error (kinda like finally cause in a throw-catch-finally)
                }
            });

            $.ajax({
                type: "POST", // Can be GET or POST
                url: "Default.aspx/GetLastName", // Call the function TestAction in DataController.cs
                contentType: "application/json; charset=utf-8",
                success: function (reponse) { // data that we get back from the server
                    if (reponse.d != "Fail") {
                        $("#personalInfoLastName").val(reponse.d);
                    }
                    else {

                    }
                },
                error: function (response) { // in case of exception from server
                },
                complete: function (response) { // to be run after success and error (kinda like finally cause in a throw-catch-finally)
                }
            });

            $.ajax({
                type: "POST", // Can be GET or POST
                url: "Default.aspx/GetAirport", // Call the function TestAction in DataController.cs
                contentType: "application/json; charset=utf-8",
                success: function (reponse) { // data that we get back from the server
                    if (reponse.d != "Fail") {
                        $("#personalInfoAirport").val(reponse.d);
                    }
                    else {

                    }
                },
                error: function (response) { // in case of exception from server
                },
                complete: function (response) { // to be run after success and error (kinda like finally cause in a throw-catch-finally)
                }
            });

            $.ajax({
                type: "POST", // Can be GET or POST
                url: "Default.aspx/GetEmail", // Call the function TestAction in DataController.cs
                contentType: "application/json; charset=utf-8",
                success: function (reponse) { // data that we get back from the server
                    if (reponse.d != "Fail") {
                        $("#personalInfoEmail").val(reponse.d);
                    }
                    else {

                    }
                },
                error: function (response) { // in case of exception from server
                },
                complete: function (response) { // to be run after success and error (kinda like finally cause in a throw-catch-finally)
                }
            });

            $.ajax({
                type: "POST", // Can be GET or POST
                url: "Default.aspx/GetPhone", // Call the function TestAction in DataController.cs
                contentType: "application/json; charset=utf-8",
                success: function (reponse) { // data that we get back from the server
                    if (reponse.d != "Fail") {
                        $("#personalInfoPhone").val(reponse.d);
                    }
                    else {

                    }
                },
                error: function (response) { // in case of exception from server
                },
                complete: function (response) { // to be run after success and error (kinda like finally cause in a throw-catch-finally)
                }
            });

            $.ajax({
                type: "POST", // Can be GET or POST
                url: "Default.aspx/GetDateOfBirth", // Call the function TestAction in DataController.cs
                contentType: "application/json; charset=utf-8",
                success: function (reponse) { // data that we get back from the server
                    if (reponse.d != "Fail") {
                        $("#personalInfoDateOfBirth").val(reponse.d);
                    }
                    else {

                    }
                },
                error: function (response) { // in case of exception from server
                },
                complete: function (response) { // to be run after success and error (kinda like finally cause in a throw-catch-finally)
                }
            });

            $.ajax({
                type: "POST", // Can be GET or POST
                url: "Default.aspx/GetAddress", // Call the function TestAction in DataController.cs
                contentType: "application/json; charset=utf-8",
                success: function (reponse) { // data that we get back from the server
                    if (reponse.d != "Fail") {
                        $("#personalInfoAddress").val(reponse.d);
                    }
                    else {

                    }
                },
                error: function (response) { // in case of exception from server
                },
                complete: function (response) { // to be run after success and error (kinda like finally cause in a throw-catch-finally)
                }
            });

            $.ajax({
                type: "POST", // Can be GET or POST
                url: "Default.aspx/GetAnswers", // Call the function TestAction in DataController.cs
                contentType: "application/json; charset=utf-8",
                success: function (reponse) { // data that we get back from the server
                    if (reponse.d != "Fail") {
                        var data = JSON.parse(reponse.d);
                        $("#question1").val(data["answer1"]);
                        $("#question2").val(data["answer2"]);
                        $("#question3").val(data["answer3"]);
                        $("#question4").val(data["answer4"]);
                        $("#question5").val(data["answer5"]);
                        $("#question6").val(data["answer6"]);
                        $("#question7").val(data["answer7"]);
                        $("#question8").val(data["answer8"]);
                        $("#question9").val(data["answer9"]);
                        $("#question10").val(data["answer10"]);
                        $("#question11").val(data["answer11"]);
                        $("#question11").val(data["answer12"]);
                    }
                    else {

                    }
                },
                error: function (response) { // in case of exception from server
                },
                complete: function (response) { // to be run after success and error (kinda like finally cause in a throw-catch-finally)
                }
            });
		
		// show login
        //dashboard clicks
		$('li.dashboard-button-container').on('click',function(e){
			e.preventDefault();
      
      var elem =  $(this).find('a');
      
      var elemId =  elem.attr('id');
      
      if(elemId == "wSch"){
			if(!$('div#work-schedule-container').is(":visible" )){
        console.log('in' + elemId);
          $('div.box-dashboard-container').hide();    
          $('div#Personal-info').hide();
          $('div#tax-documents-container').hide();
          $('div#work-schedule-container').fadeIn(500);
          $('div#tax-question').hide();
          $('div#make-payment').hide();
          if($(!'div#options .menu-dashboard').is(":visible"))
            $('div.left-menu-collapse').slideUp(500);    
          $('div.btn-container').css('background','#999');
          elem.closest('div.btn-container').css('background','#E74139');

      }
    }
      else if( elemId == "tQuest"){
         if(!$('div#tax-question-container').is(":visible" )){
            console.log('in' + elemId);
            $('div.box-dashboard-container').hide();    
                    $('div#Personal-info').hide();
                    $('div#tax-documents-container').hide();
                    $('div#work-schedule-container').hide();
                    $('div#make-payment').hide();
                    $('div#tax-question').fadeIn(500);
                    if($(!'div#options .menu-dashboard').is(":visible"))
                      $('div.left-menu-collapse').slideUp(500);    
                    $('div.btn-container').css('background','#999');
                  elem.closest('div.btn-container').css('background','#E74139');

                    

            }

          }else if(elemId == "mPay"){
            if(!$('div#make-payment-container').is(":visible" )){
              console.log('in' + elemId);
            $('div.box-dashboard-container').hide();    
                    $('div#Personal-info').hide();
                    $('div#tax-documents-container').hide();
                    $('div#work-schedule-container').hide();
                    $('div#make-payment').fadeIn(500);
                    $('div#tax-question').hide();
                    if($(!'div#options .menu-dashboard').is(":visible"))
                      $('div.left-menu-collapse').slideUp(500);    
                    $('div.btn-container').css('background','#999');
                   elem.closest('div.btn-container').css('background','#E74139');

                    

            }
          }else if(elemId == "tDoc"){
             if(!$('div#tax-documents-container').is(":visible")){
              console.log('in' + elemId);
                $('div.box-dashboard-container').hide();    
                    $('div#Personal-info').hide();
                    $('div#tax-question').hide();
                    $('div#make-payment').hide();
                    $('div#tax-documents-container').fadeIn(500);
                    $('div#work-schedule-container').hide();
                    $('div.btn-container').css('background','#999');
                   elem.closest('div.btn-container').css('background','#E74139');

                  if($(!'div#options .menu-dashboard').is(":visible"))
                      $('div.left-menu-collapse').slideUp(500);    

                }
                
              }else if(elemId == "pInfo"){
                 if(!$('div#Personal-info').is(":visible")){
                  console.log('in' + elemId);
               $('div.box-dashboard-container').hide();    
                    $('div#Personal-info').fadeIn(500);
                    $('div#tax-documents-container').hide();
                    $('div#work-schedule-container').hide();
                    $('div#tax-question').hide();
                    $('div#make-payment').hide();
                    $('div.btn-container').css('background','#999');
                    elem.closest('div.btn-container').css('background','#E74139');

                    if($(!'div#options .menu-dashboard').is(":visible"))
                      $('div.left-menu-collapse').slideUp(500);    

                }
                
            
              }
              else if(elemId == "dashboard"){
                if(!$('div.box-dashboard-container').is(":visible")){
                  console.log('in' + elemId);
                    $('div.box-dashboard-container').fadeIn(500);    
                    $('div#Personal-info').hide();
                    $('div#tax-documents-container').hide();
                    $('div#tax-question').hide();
                    $('div#make-payment').hide();
                    $('div#work-schedule-container').hide();
                    $('div.btn-container').css('background','#999');
                    if($(!'div#options .menu-dashboard').is(":visible"))
                      $('div.left-menu-collapse').slideUp(500);    

                   elem.closest('div.btn-container').css('background','#E74139');

                }
                
                
              }

		});



  $('#tQuest').on('click',function(e){
      e.preventDefault();
      if(!$('div#tax-question-container').is(":visible" )){
            $('div.box-dashboard-container').hide();    
                    $('div#Personal-info').hide();
                    $('div#tax-documents-container').hide();
                    $('div#work-schedule-container').hide();
                    $('div#make-payment').hide();
                    $('div#tax-question').fadeIn(500);
                    if($(!'div#options .menu-dashboard').is(":visible"))
                      $('div.left-menu-collapse').slideUp(500);    
                    $('div.btn-container').css('background','#999');
                    elem.closest('div.btn-container').css('background','#E74139');
                    

            }

    });


    $('#mPay').on('click',function(e){
      e.preventDefault();
      if(!$('div#make-payment-container').is(":visible" )){
            $('div.box-dashboard-container').hide();    
                    $('div#Personal-info').hide();
                    $('div#tax-documents-container').hide();
                    $('div#work-schedule-container').hide();
                    $('div#make-payment').fadeIn(500);
                    $('div#tax-question').hide();
                    if($(!'div#options .menu-dashboard').is(":visible"))
                      $('div.left-menu-collapse').slideUp(500);    
                    $('div.btn-container').css('background','#999');
                   elem.closest('div.btn-container').css('background','#E74139');

                    

            }

    });


    $('#tDoc').on('click',function(e){
          e.preventDefault();
          if(!$('div#tax-documents-container').is(":visible")){
                $('div.box-dashboard-container').hide();    
                    $('div#Personal-info').hide();
                    $('div#tax-question').hide();
                    $('div#make-payment').hide();
                    $('div#tax-documents-container').fadeIn(500);
                    $('div#work-schedule-container').hide();
                    $('div.btn-container').css('background','#999');
                   elem.closest('div.btn-container').css('background','#E74139');

                  if($(!'div#options .menu-dashboard').is(":visible"))
                      $('div.left-menu-collapse').slideUp(500);    

                }
                
            

        });

    $('#pInfo').on('click',function(e){
          e.preventDefault();
          if(!$('div#Personal-info').is(":visible")){
               $('div.box-dashboard-container').hide();    
                    $('div#Personal-info').fadeIn(500);
                    $('div#tax-documents-container').hide();
                    $('div#work-schedule-container').hide();
                    $('div#tax-question').hide();
                    $('div#make-payment').hide();
                    $('div.btn-container').css('background','#999');
                   elem.closest('div.btn-container').css('background','#E74139');

                    if($(!'div#options .menu-dashboard').is(":visible"))
                      $('div.left-menu-collapse').slideUp(500);    

                }
                
            

    });

    $('#personalInfoSubmitButton').on("click", function (e) {
        var request = {
            firstName: $('#personalInfoFirstName').val(),
            middleName: $('#personalInfoMiddleName').val(),
            lastName: $('#personalInfoLastName').val(),
            airport: $('#personalInfoAirport').val(),
            email: $('#personalInfoEmail').val(),
            phone: $('#personalInfoPhone').val(),
            dateOfBirth: $('#personalInfoDateOfBirth').val(),
            address: $('#personalInfoAddress').val()
        };

        var strRequest = JSON.stringify(request);

        $.ajax({
            type: "POST", // Can be GET or POST
            url: "Default.aspx/SubmitPersonalInfo", // Call the function TestAction in DataController.cs
            data: strRequest,
            contentType: "application/json; charset=utf-8",
            success: function (reponse) { // data that we get back from the server
                if (reponse.d != "fail") {
                    if (!$('div#tax-documents-container').is(":visible")) {
                        $('div.box-dashboard-container').hide();
                        $('div#Personal-info').hide();
                        $('div#tax-question').hide();
                        $('div#make-payment').hide();
                        $('div#tax-documents-container').fadeIn(500);
                        $('div#work-schedule-container').hide();
                        if ($(!'div#options .menu-dashboard').is(":visible")) {
                            $('div.left-menu-collapse').slideUp(500);
                        }
                        $('div.btn-container').css('background', '#999');
                        $('div.btn-container').eq(1).css('background', '#E74139');
                    }
                }
                else {
                    showError("An error occurred, please try again.");
                }
            },
            error: function (response) { // in case of exception from server
            },
            complete: function (response) { // to be run after success and error (kinda like finally cause in a throw-catch-finally)
            }
        });
    });

    $('#sendMessageSubmitButton').on("click", function (e) {
        e.preventDefault();
        var request = {
            firstName: $('#messageFirstName').val(),
            lastName: $('#messageLastName').val(),
            email: $('#messageEmail').val(),
            phone: $('#messagePhone').val(),
            message: $('#messageMessage').val()
        };

        var strRequest = JSON.stringify(request);

        $.ajax({
            type: "POST", // Can be GET or POST
            url: "AskAQuestion.ashx", // Call the function TestAction in DataController.cs
            data: strRequest,
            success: function (reponse) { // data that we get back from the server
                if (reponse == "success") {
                    alert("Question Submitted");
                }
                else if(reponse == "missing")
                {
                    alert("Please enter all the required information");
                }
                else {
                    alert("An error occurred, please try again.");
                }
            },
            error: function (response) { // in case of exception from server
                alert("An error occurred, please try again.");
            },
            complete: function (response) { // to be run after success and error (kinda like finally cause in a throw-catch-finally)
            }
        });
    });

    $('#taxQuestionSubmitButton').on("click", function (e) {
        e.preventDefault();
        var request = new Array();
        request[0] = $('#question1').val();
        request[1] = $('#question2').val();
        request[2] = $('#question3').val();
        request[3] = $('#question4').val();
        request[4] = $('#question5').val();
        request[5] = $('#question6').val();
        request[6] = $('#question7').val();
        request[7] = $('#question8').val();
        request[8] = $('#question9').val();
        request[9] = $('#question10').val();
        request[10] = $('#question11').val();
        request[11] = $('#question12').val();
        var strRequest = JSON.stringify({ answers: request });

        $.ajax({
            type: "POST", // Can be GET or POST
            url: "Default.aspx/SubmitTaxQuestions", // Call the function TestAction in DataController.cs
            data: strRequest,
            contentType: 'application/json',
            success: function (reponse) { // data that we get back from the server
                if (reponse.d == "success") {
                    alert("Answers submitted");
                }
                else {
                    showError("An error occurred, please try again.");
                }
            },
            error: function (response) { // in case of exception from server
            },
            complete: function (response) { // to be run after success and error (kinda like finally cause in a throw-catch-finally)
            }
        });
    })

    $('#dashboard').on('click',function(e){
          e.preventDefault();
          if(!$('div.box-dashboard-container').is(":visible")){
                    $('div.box-dashboard-container').fadeIn(500);    
                    $('div#Personal-info').hide();
                    $('div#tax-documents-container').hide();
                    $('div#tax-question').hide();
                    $('div#make-payment').hide();
                    $('div#work-schedule-container').hide();
                    $('div.btn-container').css('background','#999');
                    if($(!'div#options .menu-dashboard').is(":visible"))
                      $('div.left-menu-collapse').slideUp(500);    

                    elem.closest('div.btn-container').css('background','#E74139');

                }
                
                
            

        });



    $('div#options .menu').on('click',function(e){
          e.preventDefault();
          if(!$('div.left-menu-collapse').is(":visible")){
                    $('div.left-menu-collapse').slideDown(500).show();    
                }
                else{
                  $('div.left-menu-collapse').slideUp(500);    
                }
                
            

    });


      // edit button on click
      $('button.btn-primary').on('click',function(e){
            $this = $(this);
            e.preventDefault();
            $span = $this.find("span.glyphicon-edit");
        if( $span != null){
            $this.siblings('input').focus();
            $this.siblings('textarea').focus();  
        }
          
        
      });


    $('a#register').on('click',function(e){
      e.preventDefault();
      console.log('get');
      $('div.getStartedDiv').fadeIn(500);
      $('div.getStartedDiv').append($('#btnClose'));
    
      $('.navbar-collapse').slideUp(500);
    });
  
    // $('#btnClose').on('click',function(e){
    //   e.preventDefault();
    //   $('div.getStartedDiv').hide();
    //   $('#btnClose').hide();
      
      
    // });


     $('.dropdown-a').on('click',function(e){
      e.preventDefault();
      
      var value = $(this).text();
      console.log(value);
      $('#taxYear').text(value);
      
    });


     $('li#tab1 a').on('click',function(e){
        e.preventDefault();

        $('div#tab2primary').hide();
        $('div#tab1primary').show();
     })


     $('li#tab2 a').on('click',function(e){
        e.preventDefault();

        $('div#tab2primary').show();
        $('div#tab1primary').hide();
     })

     $('button.cancel-btn').on('click',function(){
        $(this).closest('div.lets-talk-container').hide();
     });

//        $('#toggle-tax').on('click',function(e){
//			e.preventDefault();
//			if(!$('div.taxes-dropdown').is(":visible")){
//            console.log('yes');
//                $('div.taxes-dropdown').show();    
//            }
//            else{
//                console.log('no');
//                $('div.taxes-dropdown').hide();
//            }
//            
//				
//
//		});


   $(function(){ 
       var navMain = $(".navbar-collapse");
       navMain.on("click", "a", null, function () {
           navMain.collapse('hide');
       });
   });

$(function(){ 
       var navMain = $(".left-menu");
       navMain.on("click", "a", null, function () {
           
           navMain.collapse('hide');
         
       });
   });

//Files Uploading
+ function($) {
    'use strict';

    // UPLOAD CLASS DEFINITION
    // ======================

    var dropZone = document.getElementById('drop-zone');
    var dropZoneWork = document.getElementById('drop-zone-work');
    var uploadForm = document.getElementById('js-upload-form');
    var uploadFormWork = document.getElementById('js-upload-form-work');

    var startUpload = function (files) {
        var formData = new FormData();
        for (var i = 0; i < files.length; i++)
        {
            formData.append(files[i].name, files[i]);
        }
        $.ajax({
            type: 'post',
            url: 'fileUploader.ashx',
            data: formData,
            contentType: 'multipart/form-data',
            success: function (status) {

            },
            processData: false,
            contentType: false,
            error: function () {
                alert("Whoops something went wrong!");
            }
        });
    }

    uploadForm.addEventListener('submit', function(e) {
        var uploadFiles = document.getElementById('js-upload-files').files;
        e.preventDefault()

        startUpload(uploadFiles)
    })

    uploadFormWork.addEventListener('submit', function(e) {
        var uploadFiles = document.getElementById('js-upload-files-work').files;
        e.preventDefault()

        startUpload(uploadFiles)
    })


    dropZone.ondrop = function(e) {
        e.preventDefault();
        this.className = 'upload-drop-zone';
        
        if(readURL(e.dataTransfer.files)){ // checking the file extension if correct
            for (var i = 0; i < e.dataTransfer.files.length; i++)
            {
                var htmldata = "<a href='#' class='list-group-item list-group-item-success'><span class='badge alert-success pull-right'>Success</span>" + e.dataTransfer.files[i].name; +"</a>";
                $('div.list-group').append(htmldata);
            }          
          startUpload(e.dataTransfer.files)
        }
        else {
            alert('File type not supported. Please upload a .csv, .jpg, or .txt');
        }
    }

    dropZone.ondragover = function() {
        this.className = 'upload-drop-zone drop';
        return false;
    }

    dropZone.ondragleave = function() {
        this.className = 'upload-drop-zone';
        return false;
    }


 dropZoneWork.ondrop = function(e) {
        e.preventDefault();
        this.className = 'upload-drop-zone-work';
        
        if(readURL(e.dataTransfer.files)){ // checking the file extension if correct
            for (var i = 0; i < e.dataTransfer.files.length; i++)
            {
                var htmldata = "<a href='#' class='list-group-item list-group-item-success'><span class='badge alert-success pull-right'>Success</span>" + e.dataTransfer.files[i].name; +"</a>";
                $('div.list-group').append(htmldata);
            }
          
          startUpload(e.dataTransfer.files)
        }
        else
        {
            alert('File type not supported. Please upload a .csv, .jpg, or .txt');
        }
    }

    dropZoneWork.ondragover = function() {
        this.className = 'upload-drop-zone-work drop';
        return false;
    }

    dropZoneWork.ondragleave = function() {
        this.className = 'upload-drop-zone-work';
        return false;
    }





}(jQuery);

	});

var fileTypes = ['csv','jpg','txt'];  //acceptable file types

function readURL(input) {
  console.log(input);
    if ( input[0] != null) {
        var extension = input[0].name.split('.').pop().toLowerCase(),  //file extension from input file
            isSuccess = fileTypes.indexOf(extension) > -1;  //is extension in acceptable types

        if (isSuccess) { //yes
            return true;

        }
        else { //no
            return false;
        }
    }
}


</script>





    




</body>
