// import 'package:flutter/material.dart';

// class Colorz {
//   static Color get pageBackgroundColor {
//     final brightness =
//         MediaQueryData.fromWindow(WidgetsBinding.instance!.window)
//             .platformBrightness;
//     return brightness == Brightness.light
//         ? Color.fromARGB(255, 242, 242, 242)
//         : Color(0xFF333333);
//   }

//   static Color get containerBackgroundColor {
//     final brightness =
//         MediaQueryData.fromWindow(WidgetsBinding.instance!.window)
//             .platformBrightness;
//     return brightness == Brightness.light
//         ? Colors.white
//         : Color.fromARGB(255, 99, 99, 99);
//   }

//   static Color get appBarColor {
//     final brightness =
//         MediaQueryData.fromWindow(WidgetsBinding.instance!.window)
//             .platformBrightness;
//     return brightness == Brightness.light
//         ? const Color.fromARGB(255, 20, 98, 162)
//         : Color.fromARGB(255, 71, 71, 71);
//   }

//   static Color get appBarIcon {
//     final brightness =
//         MediaQueryData.fromWindow(WidgetsBinding.instance!.window)
//             .platformBrightness;
//     return brightness == Brightness.light
//         ? Color.fromARGB(255, 98, 98, 98)
//         : Color.fromARGB(255, 255, 255, 255);
//   }

//   static Color get sendButtonColor {
//     final brightness =
//         MediaQueryData.fromWindow(WidgetsBinding.instance!.window)
//             .platformBrightness;
//     return brightness == Brightness.light
//         ? Color.fromARGB(255, 20, 98, 162)
//         : Color.fromARGB(255, 113, 113, 113);
//   }

//   static Color get imageIconInputField {
//     final brightness =
//         MediaQueryData.fromWindow(WidgetsBinding.instance!.window)
//             .platformBrightness;
//     return brightness == Brightness.light
//         ? Color.fromARGB(255, 20, 98, 162)
//         : Color.fromARGB(255, 99, 99, 99);
//   }

//   static Color get sendButtonIconColor {
//     final brightness =
//         MediaQueryData.fromWindow(WidgetsBinding.instance!.window)
//             .platformBrightness;
//     return brightness == Brightness.light
//         ? Colors.white
//         : Color.fromARGB(255, 208, 208, 208);
//   }

//   static Color get iconColor {
//     final brightness =
//         MediaQueryData.fromWindow(WidgetsBinding.instance!.window)
//             .platformBrightness;
//     return brightness == Brightness.light
//         ? Colors.white
//         : Color.fromARGB(255, 62, 62, 62);
//   }

//   static Color get textColor {
//     final brightness =
//         MediaQueryData.fromWindow(WidgetsBinding.instance!.window)
//             .platformBrightness;
//     return brightness == Brightness.light
//         ? Color.fromARGB(255, 98, 98, 98)
//         : Colors.white;
//   }

//   static Color get inputFieldColor {
//     final brightness =
//         MediaQueryData.fromWindow(WidgetsBinding.instance!.window)
//             .platformBrightness;
//     return brightness == Brightness.light
//         ? Color.fromARGB(255, 254, 254, 254)
//         : Color.fromARGB(255, 179, 179, 179);
//   }

//   static Color get menuBarHead {
//     final brightness =
//         MediaQueryData.fromWindow(WidgetsBinding.instance!.window)
//             .platformBrightness;
//     return brightness == Brightness.light
//         ? const Color.fromARGB(255, 20, 98, 162)
//         : Color.fromARGB(255, 52, 52, 52);
//   }

//   static Color get menuBarBody {
//     final brightness =
//         MediaQueryData.fromWindow(WidgetsBinding.instance!.window)
//             .platformBrightness;
//     return brightness == Brightness.light
//         ? Color.fromARGB(255, 254, 254, 254)
//         : Color.fromARGB(255, 78, 78, 78);
//   }

//   static Color get menuTextIcon {
//     final brightness =
//         MediaQueryData.fromWindow(WidgetsBinding.instance!.window)
//             .platformBrightness;
//     return brightness == Brightness.light
//         ? Color.fromARGB(255, 78, 78, 78)
//         : Colors.white;
//   }

//   static Color get snackBarBackground {
//     final brightness =
//         MediaQueryData.fromWindow(WidgetsBinding.instance!.window)
//             .platformBrightness;
//     return brightness == Brightness.light
//         ? Color.fromARGB(255, 49, 49, 49)
//         : const Color.fromARGB(255, 197, 197, 197);
//   }

//   static Color get snackBarText {
//     final brightness =
//         MediaQueryData.fromWindow(WidgetsBinding.instance!.window)
//             .platformBrightness;
//     return brightness == Brightness.light
//         ? Color.fromARGB(255, 245, 245, 245)
//         : Color.fromARGB(255, 74, 74, 74);
//   }
// }

import 'package:flutter/material.dart';

class Colorz {
  static Color get pageBackgroundColor {
    return const Color.fromARGB(255, 242, 242, 242);
  }

  static Color get containerBackgroundColor {
    return Colors.white;
  }

  static Color get appBarColor {
    return const Color.fromARGB(255, 20, 98, 162);
  }

  static Color get appBarIcon {
    return const Color.fromARGB(255, 98, 98, 98);
  }

  static Color get sendButtonColor {
    return const Color.fromARGB(255, 20, 98, 162);
  }

  static Color get imageIconInputField {
    return const Color.fromARGB(255, 20, 98, 162);
  }

  static Color get sendButtonIconColor {
    return Colors.white;
  }

  static Color get iconColor {
    return Colors.white;
  }

  static Color get textColor {
    return const Color.fromARGB(255, 98, 98, 98);
  }

  static Color get inputFieldColor {
    return const Color.fromARGB(255, 254, 254, 254);
  }

  static Color get menuBarHead {
    return const Color.fromARGB(255, 20, 98, 162);
  }

  static Color get menuBarBody {
    return const Color.fromARGB(255, 254, 254, 254);
  }

  static Color get menuTextIcon {
    return const Color.fromARGB(255, 78, 78, 78);
  }

  static Color get snackBarBackground {
    return const Color.fromARGB(255, 49, 49, 49);
  }

  static Color get snackBarText {
    return const Color.fromARGB(255, 245, 245, 245);
  }
}
