import 'package:flutter/material.dart';
import 'package:task_manager/screens/hhome.dart';
class SucessPage extends StatefulWidget {
  SucessPage({Key? key}) : super(key: key);

  @override
  State<SucessPage> createState() => _SucessPageState();
}

class _SucessPageState extends State<SucessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(elevation: 0.0,
      //   backgroundColor: Colors.transparent,
        
      //   leading: IconButton(icon: Icon(Icons.arrow_back_ios_new,color: Colors.black,),
      //   onPressed: reset)

      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 300,
            width: 400,
            decoration: BoxDecoration(  
              image: DecorationImage(  
                image: AssetImage("aasets/images/ev.jpg"),
              )
            ),
          ),
          Text("Successful",style: TextStyle(fontSize: 50,color: Color.fromARGB(255, 41, 210, 46)),),
          SizedBox(height: 5,),
          Text("You have successfully changed Password.\n Please use your new password to login",
          style: TextStyle(fontSize: 17),
          textAlign: TextAlign.center,),
          SizedBox(height: 70,),
          Center(
            child: InkWell(
              onTap: home,
              
                   child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 60,vertical: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      color: Colors.orange,
                    
                    ),
                    child: Text("Continue",style: TextStyle(fontSize: 20),),
                    
                   ),
                 )),
               ],
    ));
            
          
      
      
    
  }

  reset(){
    Navigator.pop(context);
    
  }

  home(){
  Navigator.push(context, MaterialPageRoute(builder:(context)=>HHomePage()));

  }
}