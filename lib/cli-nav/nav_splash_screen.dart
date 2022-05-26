import 'dart:io';
import 'package:octo/cli-nav/nav_consts.dart';

// avoid unintentional consts from import
final _logo = logo;
final _author = author;

final _cols = 35; // terminal columns entry will occupy
int _mid = (_cols ~/ 2) + 1;


// creates lines in terminal splash screen
void _createLines(line) {
  for (int i = 0; i < _cols; i++) {
    stdout.write(String.fromCharCode(line));
  }
}

// creates top border of splash screen
void _createTopBorder() {
  // top bar
  stdout.write(String.fromCharCode(topLeft));
  _createLines(vert);
  stdout.writeln(String.fromCharCode(topRight));

  // empty bar
  stdout.write(String.fromCharCode(hori));
  _createLines(whitespace);
  stdout.writeln(String.fromCharCode(hori));
}

// creates middle section (logo and author) of splash screen
void _createMiddleBorder() {
  final splitLogo = _logo.split("\n");

  String a = _author.padLeft(_mid + (_author.length ~/ 2), ' ');
  a = a.padRight((_mid * 2) - 1, ' ');

  for (int i = 0; i < splitLogo.length - 1; i++) {
    stdout.write(String.fromCharCode(hori));
    stdout.write(' ');
    stdout.write(splitLogo[i]);
    stdout.write(' ');
    stdout.writeln(String.fromCharCode(hori));
  }

  for (int i = 0; i < 3; i++) {
    stdout.write(String.fromCharCode(hori));
    i != 1 ? _createLines(whitespace) : stdout.write(a);
    stdout.writeln(String.fromCharCode(hori));
  }
}

// creates bottom border of splash screen
void _createBotBorder() {
  stdout.write(String.fromCharCode(botLeft));
  _createLines(vert);
  stdout.writeln(String.fromCharCode(botRight));
}

// creates 
void _createStartOption() {
  _createLines(whitespace);
  stdout.write('\n');
  stdout.writeln('.start'.padLeft(_mid + 3, ' '));
  stdout.write('\n');
}

// generates splash screen
void splashScreen() {
  _createTopBorder();
  _createMiddleBorder();
  _createBotBorder();
  _createStartOption();
}
