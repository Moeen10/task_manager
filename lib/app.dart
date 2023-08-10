import 'package:flutter/material.dart';
import 'package:task_manager/ui/screen/splash_screen.dart';

class TaskManagerApp extends StatelessWidget {
  const TaskManagerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Task Manager App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.green,
        textTheme: TextTheme(
          headlineLarge: TextStyle(
            color: Colors.black,
           fontSize: 34,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
          )
        ),
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(horizontal: 24,vertical: 16),
          border: OutlineInputBorder(borderSide: BorderSide.none),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 8,horizontal: 40),
          shape:  RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          ),
            elevation: 10,

          )
      )
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
          primarySwatch: Colors.grey,
          textTheme: TextTheme(
              headlineLarge: TextStyle(
                color: Colors.black,
                fontSize: 34,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.5,
              )
          ),
          inputDecorationTheme: const InputDecorationTheme(
            filled: true,
            fillColor: Colors.black,
            contentPadding: EdgeInsets.symmetric(horizontal: 24,vertical: 16),
            border: OutlineInputBorder(borderSide: BorderSide.none),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 8,horizontal: 40),
                shape:  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                elevation: 10,

              )
          )
      ),
      themeMode: ThemeMode.light,
      home: const SplashScreen(),
    );
  }
}
