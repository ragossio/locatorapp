import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:locator/pages/home_page.dart';
import 'package:locator/providers/ui_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UIProvider()),
      ],
      child: MaterialApp(
        title: 'Locator APP',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle(
              // Status bar color
              statusBarColor: Colors.transparent,

              // Status bar brightness (optional)
              statusBarIconBrightness:
                  Brightness.dark, // For Android (dark icons)
              statusBarBrightness: Brightness.light, // For iOS (dark icons)
            ),
          ),
          // primarySwatch: Colors.deepOrange,
        ),
        initialRoute: 'homePage',
        routes: {
          'homePage': (_) => HomePage(),
        },
      ),
    );
  }
}
