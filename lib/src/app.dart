import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icar/src/auth_bloc.dart';
import 'package:icar/src/resources/login_page.dart';

class MyApp extends InheritedWidget {
  final AuthBloc authBloc;
  final Widget child;

  MyApp(this.authBloc, this.child) : super(child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }

  static MyApp of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MyApp>()!; // 1 ham tra ve MyAPp => co myapp co the dung cac thuoc tính
  }
}
