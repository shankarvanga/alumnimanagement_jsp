
function deleteParty(){
	
	var rules=new Array();
    rules[0]='userName:User Name|required';
	rules[1]='userPass:Password|required';
    rules[2]='userPass:Password|minlength|4';
	rules[3]='userPass:Password|maxlength|8';
	rules[4]='age:Age|required';
	rules[5]='age:Age|numrange|18-60';
	rules[6]='age:Age|keypress|0123456789';
	rules[7]='email:E-mail|required';
	rules[8]='email:E-mail|email';
	
	with (window.document.loginForm) {
		if(performCheck('loginForm',rules,'innerHtml')){
			submit();//submit form
		}//if
	}//with
}//deleteParty