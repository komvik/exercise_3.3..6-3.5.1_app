import 'dart:io';

void main() {
// user register or login.(login/logout/delete user)
// have info about player.(How many players play on courts and wich corts.)
// inform at what time and where it will play.
// post a message to the group.

  print('\n________  Start _____________\n');
//,

// Hauptfunktion, die das Menü anzeigt
//
  print('Welcome to your App play basketball !');
  bool isLoggedIn = false;
  String username = ""; // later implementiren
  String pass = ""; // later ..

  while (true) {
    print('\nMain menu:');
    print('1. Registration/Login');
    print('2. Info about player');
    print('3. Show notifications');
    print('4. Exit app');
    stdout.write('Please select an option (1-4): ');
    String? input = stdin.readLineSync();

    switch (input) {
      case '1':
        username = registerLogin();
        isLoggedIn = true;
        break;
      case '2':
        if (isLoggedIn) {
          infoAboutPlayer();
        } else {
          print('Please log in first.');
        }
        break;
      case '3':
        if (isLoggedIn) {
          setInfo();
        } else {
          print('Please log in first.');
        }
        break;
      case '4':
        print('Goodbye - Arrivederci - Au revoir!');
        exit(0); // Standard out code, 0 = no errors.
      default:
        print('Invalid input. Please choose a number between 1 and 4.');
    }
  }
}

// Function for user registration or login
String registerLogin() {
  stdout.write('Enter your username: ');
  String? username = stdin.readLineSync();
  print('Welcome, $username! You are now logged in.');
  return username!;
}

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
