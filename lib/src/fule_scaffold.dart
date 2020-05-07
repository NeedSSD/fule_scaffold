import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FuleScaffold extends StatelessWidget {
  final StatusBarStyle statusBarStyle;
  final Color statusBarColor;
  final bool useSafeArea;
  final Color backgroundColor;
  final Widget body;

  const FuleScaffold({
    Key key,
    this.statusBarStyle = StatusBarStyle.black,
    this.statusBarColor = Colors.transparent,
    this.useSafeArea = true,
    this.backgroundColor,
    this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //生成SystemUiOverlayStyle
    SystemUiOverlayStyle systemUiOverlayStyle = statusBarStyle ==
            StatusBarStyle.black
        ? SystemUiOverlayStyle.dark.copyWith(statusBarColor: statusBarColor)
        : SystemUiOverlayStyle.light.copyWith(statusBarColor: statusBarColor);

    //是否使用安全尺寸
    Widget _useSafeArea() {
      if (useSafeArea) {
        MediaQueryData mediaQueryData = MediaQuery.of(context);
        EdgeInsets padding = mediaQueryData.padding;
        print(mediaQueryData);
        // print(padding);
        return Padding(
          padding: EdgeInsets.only(
            left: padding.left,
            top: padding.top,
            right: padding.right,
            bottom: padding.bottom,
          ),
          child: body,
        );
      } else {
        return body;
      }
    }

    return AnnotatedRegion(
      value: systemUiOverlayStyle,
      child: Scaffold(
        backgroundColor: backgroundColor,
        resizeToAvoidBottomPadding: false,
        body: _useSafeArea(),
      ),
    );
  }
}

enum StatusBarStyle { white, black }
