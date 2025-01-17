import 'package:flutter/material.dart';

extension NavigationApp on BuildContext {
  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this)
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> push(pageroute) {
    return Navigator.of(this).push(MaterialPageRoute(
      builder: (context) => pageroute,
    ));
  }

  Future<dynamic> pushNamedAndRemoveUntil(String routeName, predicate,
      {Object? arguments}) {
    return Navigator.of(this).pushNamedAndRemoveUntil(routeName, predicate);
  }

  void pop() => Navigator.of(this).pop();
}
