

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_manager/screens/reset.dart';
class ForgotPage extends StatefulWidget {
  ForgotPage({Key? key}) : super(key: key);

  @override
  State<ForgotPage> createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark
        ),  
         elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios_new,color: Colors.black,),
        onPressed: login)
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Text("Forgot Your Password?",style: TextStyle(fontSize: 25),),
            SizedBox(height: 8,),
            Text("To reset your password please enter your email id will send the password reset instructions to the email address for this account",style: TextStyle(fontSize: 16,color: Colors.grey),textAlign: TextAlign.center,),
         SizedBox(height: 30,),
            Text("Email id",style: TextStyle(fontSize: 23),),
            TextField(
              keyboardType: TextInputType.emailAddress ,
             decoration: InputDecoration(
               hintText: "userdemo@gmail.com",
             
               
               ), 
            ),
             SizedBox(height: 30,),
             Center(
               child: InkWell(
                 onTap: reset,
                 child: Expanded(child: Center(  
                   child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 70,vertical: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      color: Colors.orange,
                    
                    ),
                    child: Text("Reset",style: TextStyle(fontSize: 20),),
                    
                   ),
                 )),
               ),
             )
          ],
        ),
      ),
    );
  }

  login(){
    Navigator.pop(context);
  }

  void reset(){
  Navigator.push(context, MaterialPageRoute(builder:(context)=>ResetPage()));

  }

}