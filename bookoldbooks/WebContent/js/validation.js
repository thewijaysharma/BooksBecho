function validateform(){  
	var email=document.loginform.email.value;  
	var pw=document.loginform.pw.value;  
	  
	if (email==null || email==""){  
	  alert("E-mail can't be blank");  
	  return false;  
	}else if(pw.length<6){  
	  alert("Password must be at least 6 characters long.");  
	  return false;  
	  }  }

function validatemail(){
	
	var email=document.signup.email.value;
	var pw=document.signup.pw.value;  
	var at=email.indexOf("@");
	var dot=email.lastIndexOf(".");
	
	if(at<1 || dot<at+2 || dot+2>=email.length ){
		alert("Please enter a valid Email address");
		return false;
	}
	else if(pw.length<6){  
		  alert("Password must be at least 6 characters long.");  
		  return false;  
	}
}