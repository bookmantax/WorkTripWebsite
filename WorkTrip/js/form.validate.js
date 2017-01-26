$(document).ready(function () {
	var errorStructStart = '<div id="message" style=" z-index:1000; padding-top:10px;"><div class="alert alert-danger" ><p><strong>Error! </strong><button type="button" class="close" data-dismiss="alert">×</button>';
	//var errorStructStart = '<div id="message"><div style="padding: 5px;"><div id="inner-message" class="alert alert-error"><button type="button" class="close" data-dismiss="alert">×</button>';
	var errorStructEnd = '</p></div></div>';
	var cotainerDiv;
	// show login
	var isVerificationDone = false;
	$("button#letsTalkVerify").on("click", function (e) {
		e.preventDefault();
		$('div#message').remove();
		containerDiv = $(this).closest("div.lets-talk-inner-wrapper");
		
		if(loopForm("letsTalkForm")){
		    //console.log('yes');
		    // $('img#imgCodeSuccess').removeClass("hidden");
		    var request = {
		        FirstName: $('#letsTalkFirstName').val(),
		        LastName: $('#letsTalkLastName').val(),
		        phone1: $('#phone1').val(),
		        phone2: $('#phone2').val(),
		        phone3: $('#phone3').val(),
		    };
		    var strRequest = JSON.stringify(request);

		    $.ajax({
		        type: "POST", // Can be GET or POST
		        url: "index.aspx/SendSms", // Call the function TestAction in DataController.cs
		        data: strRequest,
		        contentType: "application/json; charset=utf-8",
		        success: function (reponse) { // data that we get back from the server
		            if (reponse.d == "Success") {
		                $('button#letsTalkNext').removeClass('disabled');
		                $("button#letsTalkVerify").addClass("hidden");
		                $('div#mobile-phone-fields').addClass('hidden');
		                $("div#beforeCode").addClass("hidden");
		                $("div#afterCode").removeClass("hidden");
		            }
		            else if(reponse.d == "Duplicate"){
		                showError("This account already exists, please login.");
		            }
		        },
		        error: function (response) { // in case of exception from server
		        },
		        complete: function (response) { // to be run after success and error (kinda like finally cause in a throw-catch-finally)
		        }
		    });
			return false;
		}
		return false;
	});

	$("#loginFormSubmit").on("click", function (e) {
		e.preventDefault();
		containerDiv = $(this).closest("div.lets-talk-inner-wrapper");
		$('div#message').remove();
		if (loopForm("loginForm")) {
		    var request = {
		        email: $('#loginEmail').val(),
		        password: $('#loginPassword').val()
		    };

		    var strRequest = JSON.stringify(request);

		    $.ajax({
		        type: "POST", // Can be GET or POST
		        url: "index.aspx/Login", // Call the function TestAction in DataController.cs
		        data: strRequest,
		        contentType: "application/json; charset=utf-8",
		        success: function (reponse) { // data that we get back from the server
		            if (reponse.d == "fail") {
		                showError("Incorrect email address or password.");
		            } else {
		                window.location = reponse.d;
		            }
		        },
		        error: function (response) { // in case of exception from server
		        },
		        complete: function (response) { // to be run after success and error (kinda like finally cause in a throw-catch-finally)
		        }
		    });
		}
		return false;
	});

	$("button#letsTalkFormSubmit").on("click", function (e) {
		e.preventDefault();
		$('div#message').remove();
		containerDiv = $(this).closest("div.lets-talk-inner-wrapper");

		if (loopForm("signupForm")) {
		    if (!$('#cbTerms').prop('checked')) {
		        var message = "Please accept terms of use";
		        showError(message);
		        return false;
		    } else {
		        var request = {
		            FirstName: $('#letsTalkFirstName').val(),
		            LastName: $('#letsTalkLastName').val(),
		            code: $('#phoneCode').val(),
		            email: $('#signupEmail').val(),
		            password: $('#signupPassword1').val()
		        };

		        var strRequest = JSON.stringify(request);

		        $.ajax({
		            type: "POST", // Can be GET or POST
		            url: "index.aspx/CreateLogin", // Call the function TestAction in DataController.cs
		            data: strRequest,
		            contentType: "application/json; charset=utf-8",
		            success: function (reponse) { // data that we get back from the server
		                window.location = reponse.d;
		            },
		            error: function (response) { // in case of exception from server
		            },
		            complete: function (response) { // to be run after success and error (kinda like finally cause in a throw-catch-finally)
		            }
		        });
		        
		    }
		} else {
			return false;
		}


	});


	$("button#letsTalkNext").on("click", function (e) {
		e.preventDefault();
		$('div#message').remove();
		containerDiv = $(this).closest("div.lets-talk-inner-wrapper");
		$('div#loadingAnim').removeClass('hidden');
		setTimeout(function(){
		    if (validateEmpty($('input#phoneCode'))) { // compare here the unique code that is sent to phone
		        var request = {
		            code: $('#phoneCode').val(),
		            firstName: $('#letsTalkFirstName').val(),
		            lastName: $('#letsTalkLastName').val()
		        };

		        var strRequest = JSON.stringify(request);

		        $.ajax({
		            type: "POST", // Can be GET or POST
		            url: "index.aspx/VerifyHuman", // Call the function TestAction in DataController.cs
		            data: strRequest,
		            contentType: "application/json; charset=utf-8",
		            success: function (reponse) { // data that we get back from the server
		                if(reponse.d == "Success")
		                {
		                    isVerificationDone = true;
		                    $('div.letsTalk').addClass("hidden");
		                    $("div.letsTalkNext").fadeIn(500).show();
		                    return false;
		                }
		                else
		                {
		                    showError("Phone Code is incorrect, please try again.");
		                }
		            },
		            error: function (response) { // in case of exception from server
		            },
		            complete: function (response) { // to be run after success and error (kinda like finally cause in a throw-catch-finally)
		            }
		        });
			} else {
				showError("Phone Code must not be empty");
			}
		}, 3000);
		return false;
	});



	function showError(message) {
		// body...
		var errorDiv = errorStructStart + message + errorStructEnd;
		// console.log($(this).closest("div.lets-talk-inner-wrapper"));
		containerDiv.append(errorDiv);
	}


	function validateEmpty(elem) {
		// body...
		//$this = $("#"+id);

		var val2 = elem.prop('value');

		if (val2 == null || val2 == "") {
			// empty

			return false;
		}
		return true;
	}


	function loopForm(formId) {
		// body...
		var t = 0;
		var checker = true;
		$("form#" + formId + " *").filter(':input').each(function () {
			var elem = $(this);

			if (elem.prop('nodeName') != "BUTTON") {

				
				console.log('in');

				if (elem.attr('name') == "email") {
					console.log('email');
					if (!validateEmail(elem.prop('value'))) {
						var message = "Please enter valid Email";
						showError(message);
						return false;
					}
				}

				if (!validateEmpty(elem)) {
					if (elem.is(':visible')) {

						var name = "";
						var attname = elem.attr('name');
						console.log(elem);
						console.log(attname);
						if (attname.indexOf("first") >= 0) {
							name = "First Name";
						} else if (attname.indexOf("last") >= 0) {
							name = "Last Name";
						} else if (attname.indexOf("email") >= 0) {
							name = "Email "
						} else if (attname.indexOf("password") >= 0) {
							name = "Password";
						} else if (attname.indexOf("confirm") >= 0) {
							name = "Confirm Password";
						} else if (attname.indexOf("phone") >= 0) {
							name = "Phone";

						}
			
						showError(name + " must not be empty");
						console.log('empty');
						checker = false;
						return false;
					}
					if (t == 3) {
					    var request = {
					        FirstName: $('#letsTalkFirstName').val(),
					        LastName: $('#letsTalkLastName').val(),
					        phone1: $('#phone1').val(),
					        phone2: $('#phone2').val(),
					        phone3: $('#phone3').val(),
					    };

					    var strRequest = JSON.stringify(request);

					    $.ajax({
					        type: "POST", // Can be GET or POST
					        url: "index.aspx/CheckDuplicate", // Call the function TestAction in DataController.cs
					        data: strRequest,
					        contentType: "application/json; charset=utf-8",
					        success: function (reponse) { // data that we get back from the server
					            if (reponse.d == "Success") {
					                $('div.phoneCodeDiv').removeClass('hidden');
					                $('div.phoneCodeDiv').slideDown(500).show();
					                t = 0;
					            }
					        },
					        error: function (response) { // in case of exception from server
					        },
					        complete: function (response) { // to be run after success and error (kinda like finally cause in a throw-catch-finally)
					        }
					    });
						

					}

					return false;

				}

				console.log(elem.attr('name'));
				if (elem.attr('name') == "password") {

					if (("" + elem.attr('id')).indexOf("signup") >= 0) {
						if (("" + elem.prop('value')).length < 8) {
							var message = "Minimum Password length should be 8 characters";
							showError(message);
							checker = false;
							return false;
						}
						if(formId == "signupForm")
						if (elem.prop('value') != $('#signupConfirmPassword').prop('value')) {

							var message = "Password doesn't match";
							showError(message);
							checker = false;
							return false;
						}
					}
				}

				// for phone number
				if (elem.attr('name') == "phone") {

					var num = elem.prop('value');
					var regex = new RegExp("^[0-9]*$");
					t++;
					if (!regex.test(num)) {

						showError(elem.attr('name') + " contains numbers only");
						checker = false;
						return false;
					}


				}


			}
		});
		console.log('out');
		if (checker)

			return true;
		else
			return false;
	}

	function validateEmail(emailID) {
		// var emailID = document.myForm.EMail.value;
		atpos = emailID.indexOf("@");
		dotpos = emailID.lastIndexOf(".");

		if (atpos < 1 || (dotpos - atpos < 2)) {

			return false;
		}
		return (true);
	}


});