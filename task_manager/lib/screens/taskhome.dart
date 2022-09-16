import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:task_manager/screens/np.dart';
class TaskHome extends StatefulWidget {
  TaskHome({Key? key}) : super(key: key);

  @override
  State<TaskHome> createState() => _TaskHomeState();
}

class _TaskHomeState extends State<TaskHome> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5),
    (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>NextPage()));
    }
    );
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light
        ),
      ),
      body: Center(  
        child: Container(
        child: Lottie.asset("aasets/images/loader.json")
            
          ),
          
        ),
        
     
      );
      
      
      
      
    
  }
}