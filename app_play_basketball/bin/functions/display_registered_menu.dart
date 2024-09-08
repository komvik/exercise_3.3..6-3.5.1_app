import 'dart:io';

void cls() {
  print("\x1B[2J\x1B[0;0H");
}

bool displayRegisteredMenu(String menuLetter) {
  String str = "";
  bool registeredCorrectly = false;

  switch (menuLetter) {
    case 'N':
    case 'n':
      registeredCorrectly = createNewProfile();
      break;
    case 'L':
    case 'l':
      str = "Log in to the program, enter your login and password";
      registeredCorrectly = enterLoginAndPassword();
      break;
    case 'D':
    case 'd':
      str = " Delete existing profile";
      registeredCorrectly = deleteExistingProfile();
      break;
    case 'E':
    case 'e':
      str = " Exit logaut";
      registeredCorrectly = logautOrExit();
    default:
      str = "the entered letters are incorrect try again";

      print(str);
      sleep(Duration(seconds: 3));
  }

  print(str);
  sleep(Duration(seconds: 3));
  return registeredCorrectly;
}

bool createNewProfile() {
  cls();
  print("create a new profile");
  sleep(Duration(seconds: 3));
  return true;
}

bool enterLoginAndPassword() {
  return true;
}

bool deleteExistingProfile() {
  return true;
}

bool logautOrExit() {
  return true;
}
