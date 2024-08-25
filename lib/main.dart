import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home/user_home.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const UserHomePage(), // Set LoginPage as the home page
    );
  }
}

//TODO: Front End Mobile. '?' là chưa làm. 
// Login, Register (Thành)
//? View User Account
//? View File Storage
// Home Page
//? Page Đăng Ảnh
//? Page Nạp Tiền
//? Page PDF


//? Admin 
//? Admin Dash board 
    //? View All User
    //? Delete User
    //? View User Profile
//? Page OCR
//? Page Convert File
//? Page Upload File
//? Page Edit File  (nếu có)