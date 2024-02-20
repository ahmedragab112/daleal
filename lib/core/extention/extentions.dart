import 'package:flutter/material.dart';

extension NavigatorHelper on BuildContext {
  void push(Widget widget) {
    Navigator.push(
      this,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );
  }

  void pushNamed(String routeName, {Object? arguments}) {
    Navigator.pushNamed(this, routeName, arguments: arguments);
  }

  void pushReplacement(Widget widget) {
    Navigator.pushReplacement(
        this, MaterialPageRoute(builder: (context) => widget));
  }

  void pushReplacementNamed(String routeName, {Object? arguments}) {
    Navigator.pushReplacementNamed(this, routeName, arguments: arguments);
  }

  void pushAndRemoveUntil(Widget widget) {
    Navigator.pushAndRemoveUntil(
        this,
        MaterialPageRoute(
          builder: (context) => widget,
        ),
        (route) => false);
  }

  void pushNamedAndRemoveUntil(String routeName, Object? arguments) {
    Navigator.pushNamedAndRemoveUntil(this, routeName, (route) => false,
        arguments: arguments);
  }
}

extension PaddingToWidget on Widget {
  Widget setPadding(
    BuildContext context, {
    bool enableMediaQuery = true,
    double vertical = 0,
    double horizontal = 0,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: enableMediaQuery
              ? MediaQuery.of(context).size.height * vertical
              : vertical,
          horizontal: enableMediaQuery
              ? MediaQuery.of(context).size.width * horizontal
              : horizontal),
      child: this,
    );
  }

  Widget setOnlyPadding(BuildContext context,
      {double bottom = 0,
      double left = 0,
      double right = 0,
      double top = 0,
      bool enableMediaQuery = true}) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: enableMediaQuery
            ? MediaQuery.of(context).size.height * bottom
            : bottom,
        left:
            enableMediaQuery ? MediaQuery.of(context).size.height * left : left,
        right: enableMediaQuery
            ? MediaQuery.of(context).size.height * right
            : right,
        top: enableMediaQuery ? MediaQuery.of(context).size.height * top : top,
      ),
      child: this,
    );
  }

  Widget setAllPadding(double padding) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: this,
    );
  }
}

extension ShowSnackBar on BuildContext {
  void showSnackBar(String message) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(
      content: Text(message),
    ));
  }
}
