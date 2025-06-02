import 'package:flutter/material.dart';
import 'dart:async';
import 'profile_screen.dart';
import '../models/user_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _navigateToProfile(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => const Center(child: CircularProgressIndicator()),
    );

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pop(context); 
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProfileScreen(
            user: User(
              name: 'Dintu Alex varghese',
              email: 'dintualexvarghese2000.com',
              phone: '7907949515',
              dob:'28/08/2000',
            ),
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Welcome to Flutter Internship'),centerTitle: true,
      backgroundColor:Colors.teal,),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _navigateToProfile(context),
          child: const Text('View Profile'),
        ),
      ),
    );
  }
}
