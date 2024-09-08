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
