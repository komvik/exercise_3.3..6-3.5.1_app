import 'dart:io';
import 'dart:async';

// How many players play on courts and wich corts
void infoAboutPlayer() {
  stdout.write('--------- ');
  String? data = stdin.readLineSync();
  print('---------: $data');
}

// inform at what time and where it will play.
void setInfo() {
  print('inform at what time and where it will play.');
}

// Löscht die Befehlszeile  clearsTheCommandLine
void cls() {
  print("\x1B[2J\x1B[0;0H");
}

void displayInfo(int number) {
  Map<int, String> printInfo = {
    1: "Welcome to your App play basketball !",
    2: "Please select one of the menu items.",
    3: "Info 3",
    5: "Info 4",
    11: "Please log in first.",
    12: 'The program has finished its work\n\n'
        'Goodbye\n'
        '    Arrivederci\n'
        '        Au revoir!\n',
    14: 'Invalid input. Please choose a number between 1 and 4.'
  };
  print(printInfo[number]);
}

void displayMenu(bool isLoggedIn) {
  print('\n       MENU:');
  if (!isLoggedIn) {
    print('   1. Registration/Login');
  }

  if (isLoggedIn) {
    print('   2. Info about player');
  }
  ;
  if (isLoggedIn) {
    print('   3. Show notifications');
  }
  ;
  print('   4. Exit app');
}

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
      str = " Select menu items";
    default:
  }
  return str;
}

//The function first asks if you are registered
//if you are registered enter your login and password
//After entering the login and password,
//the function checks whether they correspond to the recorded data

bool registerLogin() {
  print("");
  stdout.write('\nEnter your username: ');
  String? username = stdin.readLineSync();
  print('Welcome, $username! You are now logged in.');
  return false;
}

Future<void> printLettersSlowly(String word, int inputdelay) async {
  for (int i = 0; i < word.length; i++) {
    stdout.write(word[i]);
    await Future.delayed(Duration(milliseconds: inputdelay));
  }
  print('');
}
