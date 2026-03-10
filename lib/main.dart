import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/grid_view.dart';
import 'package:test_app/home_screen.dart';
import 'package:test_app/list_view.dart';
import 'package:test_app/mediaQuery_design.dart';
import 'package:test_app/navigator_learn/page01.dart';
import 'package:test_app/navigator_learn/page02.dart';
import 'package:test_app/navigator_learn/page03.dart';
import 'package:test_app/stack_customwidget.dart';
import 'package:test_app/tab_bar.dart';
import 'package:test_app/text_filed.dart';
import 'package:test_app/text_from_fields.dart';
import 'package:test_app/ui_conponent.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            '/': (context) => HomeScreen(),
            '/text_field': (context) => TextFileds(),
            '/text_from_fields': (context) => TextFromFields(),
            '/mediaQuery_design': (context) => MediaqueryDesign(),
            '/list_view': (context) => ListViews(),
            '/gird_view': (context) => GridViews(),
            '/stack_customwidget': (context) => StackCustomwidget(),
            '/ui_conponent': (context) => UiConponent(),
            '/page01': (context) => Page01(),
            '/page02': (context) => Page02(name: 'Sayed'),
            '/page03': (context) => Page03(),
            '/tab_bar': (context) => TabBars(),
          },
          initialRoute: '/tab_bar',
          theme: ThemeData(
            brightness: Brightness.light,
            primaryColor: Colors.deepPurple,
            primarySwatch: Colors.deepPurple,

            scaffoldBackgroundColor: Colors.blue.shade50,

            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),

            inputDecorationTheme: InputDecorationTheme(
              hintStyle: TextStyle(fontSize: 18, color: Colors.blue),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),

            appBarTheme: AppBarTheme(
              backgroundColor: Colors.blue,
              centerTitle: true,
            ),
          ),
        );
      },
    );
  }
}
