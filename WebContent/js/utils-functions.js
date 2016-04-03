/*-----------------------------------------------------------------
Function : loginAlumini()
-----------------------------------------------------------------*/

function loginAlumini(){
	
	var rules=new Array();
    rules[0]='userName:Alumini Name|required';
	rules[1]='userPass:Password|required';
    rules[2]='userPass:Password|minlength|4';
	rules[3]='userPass:Password|maxlength|8';	
	
	with (window.document.loginAluminiForm) {
		if(performCheck('loginAluminiForm',rules,'classic')){
			submit();
		}//if
	}//with
}//loginAlumini


/*-----------------------------------------------------------------
Function : loginStudent()
-----------------------------------------------------------------*/

function loginStudent(){
	
	var rules=new Array();
    rules[0]='userName:Student Name|required';
	rules[1]='userPass:Password|required';
    rules[2]='userPass:Password|minlength|4';
	rules[3]='userPass:Password|maxlength|8';	
	
	with (window.document.loginStudentForm) {
		if(performCheck('loginStudentForm',rules,'classic')){
			submit();
		}//if
	}//with
}//loginAlumini

function findFriend(){
	with(window.document.frmFindFriend){
			if(isEmpty(fName,'Please Enter Friend Name')) {
			return;
			}else {
			submit();	
			}
		}//with
	}//
	
function findEditFriend(){
	with(window.document.frmEditFriend){
		if(isEmpty(fName,"Please Enter Name")){
			return;
		}else if(isEmpty(password,'Please Enter Password')){
			return;
		}else if(isEmpty(branch,'Please Enter Branch')){
			return;
		}else if(isEmpty(address,'Please Enter Address')){
			return;
		}else if(isEmpty(mobile,'Enter Mobile No.')){
			return;
		}else if(isEmpty(email,'Enter E-mail')){
			return;
		}else {
			submit();
		}
		
		}//with	
	}	
	