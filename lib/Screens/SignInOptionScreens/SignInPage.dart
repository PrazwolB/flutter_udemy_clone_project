import 'package:flutter_udemy_clone_project/Screens/HomeScreen.dart';
import 'package:flutter_udemy_clone_project/Screens/SignInOptionScreens/SignupPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_udemy_clone_project/Services/Constants.dart';

class SignInPage extends StatefulWidget {
  SignInPage() : super();

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
 //Authentication authentication = Authentication();

 @override
 Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.white,
     appBar: AppBar(
       backgroundColor: kPrimaryColor,
       title: Text("Login Page"),
     ),
     body: SingleChildScrollView(
       child: Column(
         children: <Widget>[
           Padding(
             padding: const EdgeInsets.only(top: 60.0),
             child: Center(
               child: Container(
                   width: 200,
                   height: 150,
                   /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                   child: Image.asset('assets/images/e-coursed.png')),
             ),
           ),
           const Padding(
             //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
             padding: EdgeInsets.symmetric(horizontal: 15),
             child: TextField(
               decoration: InputDecoration(
                   border: OutlineInputBorder(),
                   labelText: 'Email',
                   hintText: 'Enter valid email id as abc@gmail.com'),
             ),
           ),
           const Padding(
             padding: EdgeInsets.only(
                 left: 15.0, right: 15.0, top: 15, bottom: 0),
             //padding: EdgeInsets.symmetric(horizontal: 15),
             child: TextField(

               obscureText: true,
               decoration: InputDecoration(
                   border: OutlineInputBorder(),
                   labelText: 'Password',
                   hintText: 'Enter secure password'),
             ),
           ),
           ElevatedButton(
             style: ButtonStyle(
               backgroundColor: MaterialStateProperty.all <Color> (kPrimaryColor),
             ),
             onPressed: (){
               //TODO FORGOT PASSWORD SCREEN GOES HERE
             },
             child: const Text(
               'Forgot Password',
               style: TextStyle(color: Colors.white, fontSize: 15),
             ),
           ),
           Container(
             height: 50,
             width: 250,
             decoration: BoxDecoration(
                 color: Colors.blue, borderRadius: BorderRadius.circular(20)),
             child: ElevatedButton(
                 style: ButtonStyle(
                   backgroundColor: MaterialStateProperty.all <Color> (kPrimaryColor),
                 ),
               onPressed: () {
                 Navigator.push(
                     context, MaterialPageRoute(builder: (_) => HomeScreen()));
               },
               child: const Text(
                 'Login',
                 style: TextStyle(color: Colors.white, fontSize: 25),
               ),
             ),
           ),
           const SizedBox(
             height: 130,
           ),

           TextButton(
               onPressed: () {
                 Navigator.push(
                     context, MaterialPageRoute(builder: (_) => const SignupPage()));
           },
               child: const Text('New User? Create Account')
           )
         ],
       ),
     ),
   );
 }
}
