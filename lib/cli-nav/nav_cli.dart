import 'package:octo/cli-nav/nav_splash_screen.dart';

// Entry to cli navigation tool
class Cli {
  
  Cli();

  // clear entire screen, move cursor to 0;0
  void _clearScreen() {
    print("\x1B[2J\x1B[0;0H");
  }

  // Starts cli navigation tool
  void start() {
    _clearScreen();
    splashScreen();
  }
}
