import 'package:flutter/material.dart';
import 'package:flutter_talk/screens/auth/login_screen.dart';
import 'package:flutter_talk/screens/auth/register_screen.dart';

class HomeScreen extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     body: Container(
       decoration: BoxDecoration(
         gradient: LinearGradient(
           begin: Alignment.topCenter,
           end: Alignment.bottomCenter,
           colors: [Colors.blue.shade400, Colors.blue.shade900],
         ),
       ),
       child: SafeArea(
         child: Padding(
           padding: EdgeInsets.symmetric(horizontal: 24.0),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Icon(
                 Icons.chat_bubble_rounded,
                 size: 100,
                 color: Colors.white,
               ),
               SizedBox(height: 24),
               Text(
                 'Flutter Talk',
                 style: TextStyle(
                   fontSize: 40,
                   fontWeight: FontWeight.bold,
                   color: Colors.white,
                 ),
               ),
               SizedBox(height: 60),
               ElevatedButton(
                 onPressed: () => Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => LoginScreen()),
                 ),
                 style: ElevatedButton.styleFrom(
                   backgroundColor: Colors.white,
                   foregroundColor: Colors.blue,
                   padding: EdgeInsets.symmetric(vertical: 16),
                   minimumSize: Size(double.infinity, 50),
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(12),
                   ),
                 ),
                 child: Text(
                   'Login',
                   style: TextStyle(fontSize: 18),
                 ),
               ),
               SizedBox(height: 16),
               ElevatedButton(
                 onPressed: () => Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => RegisterScreen()),
                 ),
                 style: ElevatedButton.styleFrom(
                   backgroundColor: Colors.transparent,
                   foregroundColor: Colors.white,
                   padding: EdgeInsets.symmetric(vertical: 16),
                   minimumSize: Size(double.infinity, 50),
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(12),
                     side: BorderSide(color: Colors.white, width: 2),
                   ),
                 ),
                 child: Text(
                   'Register',
                   style: TextStyle(fontSize: 18),
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