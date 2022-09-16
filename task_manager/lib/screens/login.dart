
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_manager/screens/forgot.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
        onPressed: backscreen),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Text("Welcome Back",style: TextStyle(fontSize: 48),),
            SizedBox(height: 8,),
            Text("sign in to continue....",style: TextStyle(color: Colors.grey,fontSize: 20),),
            SizedBox(height: 30,),
            Text("User Name",style: TextStyle(fontSize: 23),),
            TextField(decoration: InputDecoration(hintText: "enter user name",hintStyle: TextStyle(color: Colors.grey)),),
            SizedBox(height: 10,),
            Text("Password",style: TextStyle(fontSize:23 ),),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "enter correct password",hintStyle: TextStyle(color: Colors.grey)),),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: openforgotpassword,
                  child: Text("Forgot Password?",style: TextStyle(fontWeight: FontWeight.bold),),
                )
              ],
            ),
            Expanded(child: Center(
              child: Container(  
                padding: EdgeInsets.symmetric(horizontal: 70,vertical: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  color: Colors.orange,
                
                ),
                child: Text("Login", style: TextStyle(fontSize: 20),                ),
              ),
            ))

          ],
        ),
      ),
    );
  }
  backscreen(){
    Navigator.pop(context);
  }

  void openforgotpassword(){
  Navigator.push(context, MaterialPageRoute(builder:(context)=>ForgotPage()));

  }

}