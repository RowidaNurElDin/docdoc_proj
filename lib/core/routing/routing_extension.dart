import 'package:flutter/cupertino.dart';

extension Navigation on BuildContext{
  Future<dynamic> pushNamed(String routeName , {Object? arguments}){
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementName(String routeName , {Object? arguments}){
    return Navigator.of(this).pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil({required String routeName ,required RoutePredicate predicate, Object? arguments}){
    return Navigator.of(this).pushNamedAndRemoveUntil(routeName, predicate ,arguments: arguments);
  }

  void pop(){
    return Navigator.of(this).pop();
  }
}