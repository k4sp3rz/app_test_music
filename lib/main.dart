import 'package:app_test/models/playlist_provider.dart';
import 'package:app_test/themes/light_mode.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'themes/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => ThemeProvider()),
          ChangeNotifierProvider(create: (context) => PlaylistProvider()),
        ],
        child: const MyApp(),
      ),
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
