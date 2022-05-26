const String logo = """
░█████╗░░█████╗░████████╗░█████╗░
██╔══██╗██╔══██╗╚══██╔══╝██╔══██╗
██║░░██║██║░░╚═╝░░░██║░░░██║░░██║
██║░░██║██║░░██╗░░░██║░░░██║░░██║
╚█████╔╝╚█████╔╝░░░██║░░░╚█████╔╝
░╚════╝░░╚════╝░░░░╚═╝░░░░╚════╝░
""";

const String author = "Arad F.";

// unicodes for border
const int topLeft = 0x2554;
const int botLeft = 0x255A;
const int topRight = 0x2557;
const int botRight = 0x255D;
const int vert = 0x2550;
const int hori = 0x2551;
const int whitespace = 0x0020;

const ANSI_ESCAPE = '\x1b[';

abstract class KeyCode {
  static const String UP = '${ANSI_ESCAPE}A';
  static const String DOWN = '${ANSI_ESCAPE}B';
  static const String RIGHT = '${ANSI_ESCAPE}C';
  static const String LEFT = '${ANSI_ESCAPE}D';

  static const String HOME = '${ANSI_ESCAPE}H';
  static const String END = '${ANSI_ESCAPE}F';

  static const String F1 = '${ANSI_ESCAPE}M';
  static const String F2 = '${ANSI_ESCAPE}N';
  static const String F3 = '${ANSI_ESCAPE}O';
  static const String F4 = '${ANSI_ESCAPE}P';
  static const String F5 = '${ANSI_ESCAPE}Q';
  static const String F6 = '${ANSI_ESCAPE}R';
  static const String F7 = '${ANSI_ESCAPE}S';
  static const String F8 = '${ANSI_ESCAPE}T';
  static const String F9 = '${ANSI_ESCAPE}U';
  static const String F10 = '${ANSI_ESCAPE}V';
  static const String F11 = '${ANSI_ESCAPE}W';
  static const String F12 = '${ANSI_ESCAPE}X';

  static const String INS = '${ANSI_ESCAPE}2~';
  static const String DEL = '${ANSI_ESCAPE}3~';
  static const String PAGE_UP = '${ANSI_ESCAPE}5~';
  static const String PAGE_DOWN = '${ANSI_ESCAPE}6~';

  static const String SPACE = ' ';

  static const String ESC = '\u001b';
  static const String ENTER = '\u000a';
}