void main(){

  int password = 1234;
  String email = "sea2fun@gmail.com";
  String username="sea2fun";
  int phone=021111111;

  // * yourUsername is optional variable and we write in input.
  registerAccount(email , password ,yourPhone: phone, yourUsername: username);
  // * yourUsername is optional variable. we can remove from input .
  registerAccount(email , password);



  // * we must enter data with ordering . in here we have Error !
  // loginAccount(email , password ,phone , username);

  // * we must enter data with ordering . in here we have Ordering !
  loginAccount(email , password ,username , phone);


  forgetPassword(email , password , loginAccount);
}

void forgetPassword(String yourEmail , int yourPassword , void login (String yourEmailLogin ,int yourPasswordLogin)) {
  print("----ForgetPassword----");
  int newPassword = 123456789;
  yourPassword=newPassword;
  login(yourEmail , yourPassword);

  // * We Cant Call login() with Optional Variables Of Method loginAccount() .
  //login(yourEmail , yourPassword , "software8686" , 021212121);

}

void registerAccount(String yourEmail ,int yourPassword , {String yourUsername , int yourPhone}) {
  print("----Register Account----");
  print("Your Email : $yourEmail");
  print("Your Password : $yourPassword");
  print("Your Username : $yourUsername");
  print("Your PhoneNumber : $yourPhone");
  print("Register Done.\n");

}

void loginAccount(String yourEmail ,int yourPassword , [String yourUsername , int yourPhone]) {
  print("----Login Account----");
  print("Your Email : $yourEmail");
  print("Your Password : $yourPassword");
  print("Your Username : $yourUsername");
  print("Your PhoneNumber : $yourPhone");
  print("Login Done.\n");

}