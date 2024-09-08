String displayLogin(int strnum) {
  String str = "";
  switch (strnum) {
    case 1:
      str = "To register you need to enter your login and password";
      break;
    case 2:
      str = "Welcome to the program ";
      break;
    case 3:
      str = " login is incorrect, try again ";
      break;
    case 10:
      str = " Select menu items";
    default:
  }
  return str;
}
