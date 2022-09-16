import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:task_manager/screens/hevent.dart';
import 'package:task_manager/screens/hnote.dart';
import 'package:task_manager/screens/htask.dart'; 
class HHomePage extends StatefulWidget {
  HHomePage({Key? key}) : super(key: key);

  @override
  State<HHomePage> createState() => _HHomePageState();
}

class _HHomePageState extends State<HHomePage> {
  String FilterType= "monthly";
  String taskpop="close";
  DateTime today = new DateTime.now();
  var monthNames = ["JAN", "FEB", "MAR", "APR", "MAY", "JUN", "JUL", "AUG", "SEPT", "OCT", "NOV", "DEC"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBar(
                backgroundColor: Colors.orange,
                elevation: 0.0,
                title: Text("Work Task", style: TextStyle(fontSize: 30),
                
                ),
                centerTitle: true,
                actions: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.short_text_sharp))
                ],
              ),
              Container(
            height: 65,
            color: Colors.orange,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: (){
                        changeFilter("today");
                      },
                      child: Text("Today",style: TextStyle(color: Colors.white,
                      fontSize:25
                          ),),
                    ),
                    SizedBox(height: 15,),
                    Container(
                    height: 6,
                    width: 120,
                    color: (FilterType=="today")?Colors.white:Colors.transparent,
                    )
                  ],
                ),


                 Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: (){
                        changeFilter("monthly");
                      },
                      child: Text("Monthly",style: TextStyle(color: Colors.white,
                      fontSize:25
                          ),),
                    ),
                    SizedBox(height: 15,),
                    Container(
                    height: 8,
                    width: 120,
                    color: (FilterType=="monthly")?Colors.white:Colors.transparent,

                    ),
            
                  ],
                )
              ],
            ),
          ),
          (FilterType=="monthly")?TableCalendar(
           startingDayOfWeek: StartingDayOfWeek.monday,
           firstDay: DateTime.utc(2010, 10, 16),
           lastDay: DateTime.utc(2030, 3, 14),
           focusedDay: DateTime.now(),
          ):Container(),
          Expanded(child: SingleChildScrollView(  
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.all(25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Text("Today  ${today.day}/${monthNames[today.month-1]}/${today.year}", style: 
                       TextStyle(fontSize: 20,color: Colors.grey.shade600)
                       ,)
                    ],
                  ),
                ),
                       task(Color.fromARGB(255, 56, 3, 135), "Meeting with reshab sir" , "9:00 AM"),
                        task(Colors.teal, "live assistance session" , "6:30 PM"),
                        task(Colors.orange, "workout" , "8:00 PM"),
              ],
            ),
          )
          ),
          Container(
            height: 130,
            child: Stack(
            children: [
              Positioned(bottom: 0,
                child: Container(
                  height: 87,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.orange,
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Icon(Icons.check_circle_outline, color: Colors.white),
                            SizedBox(height: 3,),
                            Text("Task",style: TextStyle(color: Colors.white,fontSize: 17),)
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Icon(Icons.menu_book_rounded, color: Colors.white),
                            SizedBox(height: 3,),
                            Text("Menu",style: TextStyle(color: Colors.white,fontSize: 17),)
                          ],
                        ),
                      ),
                      Container(width: 60),
                      Container(
                        child: Column(
                          children: [
                            Icon(Icons.paste_rounded, color: Colors.white),
                            SizedBox(height: 3,),
                            Text("Note",style: TextStyle(color: Colors.white,fontSize: 17),)
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Icon(Icons.account_box, color: Colors.white),
                            SizedBox(height: 3,),
                            Text("Profile",style: TextStyle(color: Colors.white,fontSize: 17),)
                          ],
                        ),
                      )
                    ],
                  ),

                )),
                Positioned(bottom: 25,
                left: 0,
                right: 0,

                  child: InkWell(
                    onTap: AddTask,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(  
                        gradient: LinearGradient( 
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [Colors.blue,Colors.black54]
                        ),
                        shape: BoxShape.circle
                      ),
                      child: Center(
                        child: Text("+",style: TextStyle(color: Colors.white, fontSize: 33),),
                        
                      ),
                    ),
                  ))
            ],
            ),
          ),


            ],
          ),
          Container(
               child: (taskpop=="open")?Container(
                 height: MediaQuery.of(context).size.height*50,
                 width: MediaQuery.of(context).size.width,
                 color: Colors.black.withOpacity(0.8),
                 child: Center(  
                   child: InkWell(
                     onTap: CloseTask,
                     child: Container( 
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(17),
                         color: Colors.white

                       ),
                       height: MediaQuery.of(context).size.height*0.3,
                       width: MediaQuery.of(context).size.width*0.8,
                      child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(height: 2,),
                        InkWell(
                          onTap: opennewtask,
                          child: Container(
                            child: Text("Add Task", style: TextStyle(fontSize: 19),   ),
                          ),
                        ),
                        Container(
                          height: 2,
                          margin: EdgeInsets.symmetric(horizontal: 30),
                          color: Colors.black.withOpacity(0.1),
                        ),
                         InkWell(
                          onTap: opennewnote,
                          child: Container(
                            child: Text("Add Note", style: TextStyle(fontSize: 19),   ),
                          ),
                        ),
                        Container(
                          height: 2,
                          margin: EdgeInsets.symmetric(horizontal: 30),
                          color: Colors.black.withOpacity(0.1),
                        ),
                        //  InkWell(
                        //   onTap: opennewevent,
                        //   child: Container(
                        //     child: Text("Add Events", style: TextStyle(fontSize: 19),   ),
                        //   ),
                        // ),
                        SizedBox(height: 3,),

                      ],
                      ),
                     ),
                   ),
                 ),
               ):Container()
          )

          
        ],
      ),
    );
  }

  changeFilter(String Filter){
    FilterType=Filter;
    setState(() {
      
    });
  }
  Slidable task(Color color, String title, String time){
    
    return Slidable(
     
      child: Container(
        
        height:80,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 11),
        decoration: BoxDecoration(  
          color: Colors.white,
          boxShadow: [BoxShadow(
         color: Colors.black.withOpacity(0.03),
         offset: Offset(0,9),
         blurRadius: 20,
         spreadRadius: 2,

          )]
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 25,
              width: 25,
              decoration: BoxDecoration(  
                color: Colors.white,
                shape: BoxShape.rectangle,
                border: Border.all(color: color, width: 6)
              ),
            ),
            Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(title, style: TextStyle(fontSize: 15),),
                SizedBox(height: 5,),
                Text(time, style: TextStyle(color: Colors.grey),)
              ],
            ),
            Expanded(child: Container()),
            Container(
              height: 50,
              width: 8,
              color: color,
            ),
          
          ],
        ),
      ),
       
       endActionPane:  ActionPane(
    motion: ScrollMotion(),
    children: [
      SlidableAction(
        
        
        onPressed: (_){},
        
        foregroundColor: Color.fromARGB(255, 237, 5, 5),
        icon: Icons.edit_sharp,
        label: 'edit',
      ),
      SlidableAction(
        onPressed: (_){},
        
        foregroundColor: Color.fromARGB(255, 6, 187, 15),
        icon: Icons.save,
        label: 'Save',
      ),
    ],
  ),  
     
   
   
      
    );
  }
  AddTask(){
    taskpop= "open";
    setState(() {
      
    });
  }
  CloseTask(){
    taskpop="Done";
    setState(() {
      
    });
  }

  opennewtask(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>HosaTask()));
  }
  opennewnote(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>HosaNote()));

  }

  opennewevent(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>HosaEvent()));

  }

}