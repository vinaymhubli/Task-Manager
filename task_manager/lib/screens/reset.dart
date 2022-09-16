import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_manager/screens/sucess.dart';
class ResetPage extends StatefulWidget {
  ResetPage({Key? key}) : super(key: key);

  @override
  State<ResetPage> createState() => _ResetPageState();
}

class _ResetPageState extends State<ResetPage> {
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
        title: Text("Reset Password",style: TextStyle(color: Colors.black,fontSize: 22),),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios_new,color: Colors.black,),
        onPressed: forgot)),
        body: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SizedBox(height: 10,),
            // Text("𝑹𝒆𝒔𝒆𝒕 𝑷𝒂𝒔𝒔𝒘𝒐𝒓𝒅 ",style: TextStyle(fontSize: 25),),
            // SizedBox(height: 10,),
           
            Text("Reset Code",style: TextStyle(fontSize: 20),),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "****"
              ),
            ),
            SizedBox(height: 10),
            Text("New Password",style: TextStyle(fontSize:20 ),),
            TextField(
              keyboardType: TextInputType.number,
              decoration:InputDecoration(  
                hintText: "Enter new password",
              )
            ),
            SizedBox(height: 10),

            Text("confirm password",style: TextStyle(fontSize:20 )),
            TextField(
              keyboardType: TextInputType.number,
              decoration:InputDecoration(  
                hintText: "Re-Enter new password",
              )
            ),
            

            
            SizedBox(height: 30,),
             Center(
               child: InkWell(
                 onTap: sucess,
                 child: Expanded(child: Center(  
                   child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 60,vertical: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      color: Colors.orange,
                    
                    ),
                    child: Text(" Change Password",style: TextStyle(fontSize: 20),),
                    
                   ),
                 )),
               ),
             )
            ],
          ),
        ),
    );
  }
  forgot(){
    Navigator.pop(context);
  }

  void sucess(){
  Navigator.push(context, MaterialPageRoute(builder:(context)=>SucessPage()));

  }
}