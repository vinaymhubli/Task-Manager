import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_manager/screens/login.dart';

class NextPage extends StatefulWidget {
  NextPage({Key? key}) : super(key: key);

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {

  int Currentpage=0;
  PageController _pageController = PageController(
  initialPage: 0,
  keepPage: true

  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.orange
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height*0.6,
                child: PageView(
                  controller: _pageController,
                  children: [
                    OnBoardingPage("onboard2", "Welcome To Task-Manager",""),
                    OnBoardingPage("b1", "Meet Your Daily Task", " "),
                    OnBoardingPage("v2", "plans & coordinates activities", ""),
  
                  ],
                  onPageChanged: (value)=>{SetCurrentPage(value)},
                 ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(3, (index) => getindicator(index)),
              )
            ],
          ),
          Positioned(bottom:0,
          left: 0,
          right: 0,
          child: Container(   
            margin: EdgeInsets.only(top: 10),
            height: 150,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(  
              image: DecorationImage(  
                image: AssetImage("aasets/images/vps.png"),
                fit: BoxFit.fill
              )
            ),
            child: Column(
            
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                InkWell(
                  splashColor: Colors.teal,
                  onTap: loginpage,
                  child: Container(
                    
                    padding: EdgeInsets.symmetric(horizontal: 70,vertical: 20),
                    decoration: BoxDecoration(color: Color.fromARGB(255, 219, 48, 48),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [BoxShadow(  
                      
                      color: Colors.black.withOpacity(0.5),
                      offset: Offset(0,8),
                      blurRadius: 30,
                      spreadRadius: 3

                    )]
                    ),

                    child: Text("Get Started",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                    
                  ),
                ),
               
              ],
            ),
          ))
        ],
      ),
    );
  }
  AnimatedContainer getindicator(int pageno){
    return AnimatedContainer(duration: Duration(milliseconds: 100),
    height: 10,
    width: (Currentpage==pageno)?30:12,
    margin: EdgeInsets.symmetric(horizontal: 5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(6)),
      color: (Currentpage==pageno)? Color.fromARGB(255, 11, 74, 125):Colors.grey
    ),
    );
  }
  Column OnBoardingPage(String img, String title, String description){
  return Column(
   mainAxisAlignment: MainAxisAlignment.center,
   children: [
     SizedBox(height: 60),
     Container(
       height: 150,
       width: MediaQuery.of(context).size.width,
       padding: EdgeInsets.all(50),
       decoration: BoxDecoration(  
         image:DecorationImage(  
           image: AssetImage("aasets/images/$img.png")
         )
       )
     ),
     SizedBox(height: 30,),
     Container(
       padding: EdgeInsets.symmetric(vertical: 12,horizontal: 12),
       child: Text(title ,style: TextStyle( fontSize: 25),textAlign: TextAlign.center),
     ),
     
     
   ],
  );
}


SetCurrentPage(int value){
  Currentpage= value;
  setState(() {
    
  });
}
loginpage(){
  Navigator.push(context, MaterialPageRoute(builder:(context)=>LoginPage()));
}
  
}