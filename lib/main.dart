import 'package:flutter/material.dart';
import 'package:travel_app/ui/constants/colors.dart';
import 'ui/screens/landing.dart';
import 'ui/services/app_router.dart';

void main() {
  runApp(MyApp(appRouter: AppRouter()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: appRouter.onGenerateRoute,
      title: 'Travel App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: background,
        backgroundColor: background,
        primaryColor: primary,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: white),
        ),
        appBarTheme: const AppBarTheme(
          color: white,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: primary,
            textStyle: const TextStyle(color: background)
          )
        ),
        popupMenuTheme: PopupMenuThemeData(
          color: background,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          )
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(primary)
          )
        ),
        expansionTileTheme: const ExpansionTileThemeData(
          collapsedIconColor: white,
          collapsedTextColor: white,
          textColor: primary,
          iconColor: primary,
          collapsedBackgroundColor: Color.fromRGBO(64, 62, 68, 1),
        ),
        dividerColor: primary
      ),
      home: const Landing(),
    );
  }
}