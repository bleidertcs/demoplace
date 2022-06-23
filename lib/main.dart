import 'package:flutter/material.dart';

import 'login_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: const MaterialColor(4283546059, {
          50: Color(0xffebf7f9),
          100: Color(0xffd8eff3),
          200: Color(0xffb0dfe8),
          300: Color(0xff89d0dc),
          400: Color(0xff62c0d0),
          500: Color(0xff3bb0c4),
          600: Color(0xff2f8d9d),
          700: Color(0xff236a76),
          800: Color(0xff17464f),
          900: Color(0xff0c2327)
        }),
        brightness: Brightness.light,
        primaryColor: const Color(0xff51b9cb),
        primaryColorLight: const Color(0xffd8eff3),
        primaryColorDark: const Color(0xff236a76),
        canvasColor: const Color(0xfffafafa),
        scaffoldBackgroundColor: const Color(0xfffafafa),
        bottomAppBarColor: const Color(0xffffffff),
        cardColor: const Color(0xffffffff),
        dividerColor: const Color(0x1f000000),
        highlightColor: const Color(0x66bcbcbc),
        splashColor: const Color(0x66c8c8c8),
        selectedRowColor: const Color(0xfff5f5f5),
        unselectedWidgetColor: const Color(0x8a000000),
        disabledColor: const Color(0x61000000),
        toggleableActiveColor: const Color(0xff2f8d9d),
        secondaryHeaderColor: const Color(0xffebf7f9),
        backgroundColor: const Color(0xffb0dfe8),
        dialogBackgroundColor: const Color(0xffffffff),
        indicatorColor: const Color(0xff3bb0c4),
        hintColor: const Color(0x8a000000),
        errorColor: const Color(0xffd32f2f),
        buttonTheme: const ButtonThemeData(
          textTheme: ButtonTextTheme.primary,
          minWidth: 88,
          height: 36,
          padding: EdgeInsets.only(top: 0, bottom: 0, left: 16, right: 16),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Color(0xff000000),
              width: 0,
              style: BorderStyle.none,
            ),
            borderRadius: BorderRadius.all(Radius.circular(2.0)),
          ),
          alignedDropdown: false,
          buttonColor: Color(0xff272d63),
          disabledColor: Color(0x61000000),
          highlightColor: Color(0x00000000),
          splashColor: Color(0x1fffffff),
          focusColor: Color(0x1f000000),
          hoverColor: Color(0x0a000000),
          colorScheme: ColorScheme(
            primary: Color(0xff51b9cb),
            secondary: Color(0xff3bb0c4),
            surface: Color(0xffffffff),
            background: Color(0xffb0dfe8),
            error: Color(0xffd32f2f),
            onPrimary: Color(0xff000000),
            onSecondary: Color(0xff000000),
            onSurface: Color(0xff000000),
            onBackground: Color(0xff000000),
            onError: Color(0xffffffff),
            brightness: Brightness.light,
          ),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          labelStyle: TextStyle(
            color: Color(0xdd000000),
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          helperStyle: TextStyle(
            color: Color(0xdd000000),
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          hintStyle: TextStyle(
            color: Color(0xdd000000),
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          errorStyle: TextStyle(
            color: Color(0xdd000000),
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          isDense: false,
          contentPadding:
              EdgeInsets.only(top: 12, bottom: 12, left: 0, right: 0),
          isCollapsed: false,
          prefixStyle: TextStyle(
            color: Color(0xdd000000),
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          suffixStyle: TextStyle(
            color: Color(0xdd000000),
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          counterStyle: TextStyle(
            color: Color(0xdd000000),
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          filled: false,
          fillColor: Color(0x00000000),
          errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xff000000),
              width: 1,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xff000000),
              width: 1,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
          ),
          focusedErrorBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xff000000),
              width: 1,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
          ),
          disabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xff000000),
              width: 1,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xff000000),
              width: 1,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xff000000),
              width: 1,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
          ),
        ),
        iconTheme: const IconThemeData(
          color: Color(0xdd000000),
          opacity: 1,
          size: 24,
        ),
        primaryIconTheme: const IconThemeData(
          color: Color(0xff000000),
          opacity: 1,
          size: 24,
        ),
        tabBarTheme: const TabBarTheme(
          indicatorSize: TabBarIndicatorSize.tab,
          labelColor: Color(0xdd000000),
          unselectedLabelColor: Color(0xb2000000),
        ),
        chipTheme: const ChipThemeData(
          backgroundColor: Color(0x1f000000),
          brightness: Brightness.light,
          deleteIconColor: Color(0xde000000),
          disabledColor: Color(0x0c000000),
          labelPadding: EdgeInsets.only(top: 0, bottom: 0, left: 8, right: 8),
          labelStyle: TextStyle(
            color: Color(0xde000000),
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          padding: EdgeInsets.only(top: 4, bottom: 4, left: 4, right: 4),
          secondaryLabelStyle: TextStyle(
            color: Color(0x3d000000),
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          secondarySelectedColor: Color(0x3d51b9cb),
          selectedColor: Color(0x3d000000),
          shape: StadiumBorder(
              side: BorderSide(
            color: Color(0xff000000),
            width: 0,
            style: BorderStyle.none,
          )),
        ),
        dialogTheme: const DialogTheme(
            shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Color(0xff000000),
            width: 0,
            style: BorderStyle.none,
          ),
          borderRadius: BorderRadius.all(Radius.circular(0.0)),
        )),
      ),
      home: const LoginPage(),
    );
  }
}
