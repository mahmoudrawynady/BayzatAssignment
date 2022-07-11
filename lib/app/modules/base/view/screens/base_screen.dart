import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../pokedex/domain/usecases/pokemon_colors.dart';

class BaseScreen extends StatefulWidget {
  final Widget? body;
  final StatusBarThemeType? statusParStyle;
  final Color? backgroundColor;

  const BaseScreen(
      {this.statusParStyle = StatusBarThemeType.dark,
      this.body,
      this.backgroundColor,
      Key? key})
      : super(key: key);

  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  @override
  void initState() {
    (widget.statusParStyle != StatusBarThemeType.transparent)
        ? SystemChrome.setSystemUIOverlayStyle(
            widget.statusParStyle == StatusBarThemeType.dark
                ? SystemUiOverlayStyle.dark
                : SystemUiOverlayStyle.light)
        : SystemChrome.setSystemUIOverlayStyle(
            const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: widget.backgroundColor, body: widget.body);
  }
}
