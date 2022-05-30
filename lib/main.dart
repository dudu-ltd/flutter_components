import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_components/pages/api_index.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'third_party/syntax_highlight.dart';

void main() async {
  await SyntaxHighlighter.initialize();
  runApp(const FlutterComponents());
}

class FlutterComponents extends StatelessWidget {
  const FlutterComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate, // 指定本地化的字符串
        GlobalCupertinoLocalizations.delegate, // 对应的Cupertino风格
        GlobalWidgetsLocalizations.delegate // 指定默认的文本排列方向, 由左到右或由右到左
      ],
      supportedLocales: const [Locale("zh")],
      debugShowCheckedModeBanner: false,
      title: 'Flutter组件们',
      theme: ThemeData(
        // useMaterial3: true,
        fontFamily: 'PingFang',
        primarySwatch: Colors.blue,
      ),
      home: IndexPage(),
      // home: AnimatedSplashScreen(
      //   duration: 1000,
      //   splash: const FlutterLogo(size: 400),
      //   nextScreen: IndexPage(),
      //   splashTransition: SplashTransition.fadeTransition,
      //   // pageTransitionType: PageTransitionType.scale,
      //   backgroundColor: Colors.white,
      // ),
    );
  }
}
