import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        title: 'Hello',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: GoogleFonts.nunitoTextTheme(
              Theme.of(context).textTheme,
            )),
        debugShowCheckedModeBanner: false,
        home: DashboardPage(),
      ),
      designSize: const Size(360, 640),
    );
  }
}

class DashboardPage extends StatelessWidget {
  final purpleColor = Color(0xff6688FF);
  final darkTextColor = Color(0xff1F1A3D);
  final lightTextColor = Color(0xff999999);
  final textFieldColor = Color(0xffF5F6FA);
  final borderColor = Color(0xffD9D9D9);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 52.h,
                ),
                Text(
                  'Sign up to Masterminds',
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      color: darkTextColor),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Wrap(
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: lightTextColor,
                          fontSize: 14.sp),
                    ),
                    Text(
                      'Login',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: purpleColor,
                          fontSize: 14.sp),
                    )
                  ],
                ),
                SizedBox(
                  height: 24.h,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 0),
                    ),
                    filled: true,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
                    fillColor: textFieldColor,
                    hintText: "First Name",
                    hintStyle:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 0),
                    ),
                    filled: true,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
                    fillColor: textFieldColor,
                    hintText: "Email",
                    hintStyle:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: BorderSide(color: Colors.green, width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: BorderSide(color: Colors.green, width: 1),
                    ),
                    filled: true,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
                    fillColor: textFieldColor,
                    hintText: "Password",
                    hintStyle:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 0),
                    ),
                    filled: true,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
                    fillColor: textFieldColor,
                    hintText: "Confirm Password",
                    hintStyle:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(purpleColor),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      textStyle: MaterialStateProperty.all(
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700),
                      ),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical: 14.h),
                      ),
                    ),
                    onPressed: () {},
                    child: Text('Create Account'),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(),
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    Text(
                      'or sign up via',
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: lightTextColor),
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    Expanded(
                      child: Divider(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16.h,
                ),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    style: ButtonStyle(
                      side: MaterialStateProperty.all(
                        BorderSide(color: borderColor),
                      ),
                      textStyle: MaterialStateProperty.all(
                        TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: darkTextColor),
                      ),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical: 14.h),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20.h,
                          width: 35.h,
                          child: Image.asset('assets/images/g.png'),
                        ),
                        Text(
                          'Google',
                          style: TextStyle(color: darkTextColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
