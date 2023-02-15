// Copyright 2022-present Project Authors. All rights reserved.
// Use of this source code is governed by a MIT-style license that can be
// found in the LICENSE file.

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_components/pages/api_index.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:chinese_font_library/chinese_font_library.dart';

import 'third_party/syntax_highlight.dart';

void main() async {
  await SyntaxHighlighter.initialize();
  runApp(FlutterComponents());
}

class FlutterComponents extends StatelessWidget {
  FlutterComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate, // 指定本地化的字符串
        GlobalCupertinoLocalizations.delegate, // 对应的Cupertino风格
        GlobalWidgetsLocalizations.delegate // 指定默认的文本排列方向, 由左到右或由右到左
      ],
      supportedLocales: const [Locale("zh")],
      debugShowCheckedModeBanner: false,
      title: 'Flutter组件们',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.useSystemChineseFont(),
        // useMaterial3: true,
        // fontFamily: 'PingFang',
        primarySwatch: Colors.blue,
      ),

      // routeInformationProvider: _router.routeInformationProvider,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
    );
  }

  GoRouter get _router {
    indexRoute(BuildContext context, GoRouterState state) {
      var pkg = state.params['pkg'];
      String? path = state.queryParams['path'];
      return IndexPage(pkg: pkg, path: path);
      // return AnimatedSplashScreen(
      //   duration: 1000,
      //   splash: const FlutterLogo(size: 400),
      //   nextScreen: IndexPage(pkg: pkg, path: path),
      //   splashTransition: SplashTransition.fadeTransition,
      //   // pageTransitionType: PageTransitionType.scale,
      //   backgroundColor: Colors.white,
      // );
    }

    return GoRouter(
      initialLocation: '/material?path=/quick_start/about',
      routes: <GoRoute>[
        GoRoute(
          path: '/:pkg',
          name: 'indexPage',
          builder: indexRoute,
        )
      ],
    );
  }
}
