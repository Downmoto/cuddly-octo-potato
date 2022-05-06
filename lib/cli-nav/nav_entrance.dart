import 'dart:io';
import 'package:m/cli-nav/nav_consts.dart';

// Entry to cli navigation tool
class Cli {
  final _logo = logo;
  final _author = author;

  final _cols = 35; // terminal columns entry will occupy

  // creates lines in terminal splash screen
  void _createLines(line) {
    for (int i = 0; i < _cols; i++) {
      stdout.write(String.fromCharCode(line));
    }
  }

  // creates top border of splash screen
  void _createTopBorder() {
    stdout.write(String.fromCharCode(topLeft));
    _createLines(vert);
    stdout.write(String.fromCharCode(topRight));
    stdout.write('\n');
  }

  // creates middle section (logo and author) of splash screen
  void _createMiddleBorder() {
    final splitLogo = _logo.split("\n");
    int mid = (_cols ~/ 2) + 1;

    String a = _author.padLeft(mid + (_author.length ~/ 2), ' ');
    a = a.padRight((mid * 2) - 1, ' ');

    for (int i = 0; i < splitLogo.length - 1; i++) {
      stdout.write(String.fromCharCode(hori));
      stdout.write(' ');
      stdout.write(splitLogo[i]);
      stdout.write(' ');
      stdout.write(String.fromCharCode(hori));
      stdout.write('\n');
    }

    for (int i = 0; i < 3; i++) {
      stdout.write(String.fromCharCode(hori));
      i != 1 ? _createLines(0x0020) : stdout.write(a);
      stdout.write(String.fromCharCode(hori));
      stdout.write('\n');
    }
  }

  // creates bottom border of splash screen
  void _createBotBorder() {
    stdout.write(String.fromCharCode(botLeft));
    _createLines(vert);
    stdout.write(String.fromCharCode(botRight));
    stdout.write('\n');
  }

  // generates splash screen
  void _splashScreen() {
    _createTopBorder();
    _createMiddleBorder();
    _createBotBorder();
  }

  // Starts cli navigation tool
  void start() {
    _splashScreen();
  }
}
