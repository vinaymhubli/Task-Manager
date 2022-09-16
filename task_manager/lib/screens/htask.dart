



import 'package:flutter/material.dart';
class HosaTask extends StatefulWidget {
  HosaTask({Key? key}) : super(key: key);

  @override
  State<HosaTask> createState() => _HosaTaskState();
}

class _HosaTaskState extends State<HosaTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Add Task",style: TextStyle(color: Colors.white, fontSize: 30),),
        elevation: 0.0,
       ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(  
            children: [
              Container(
                height: 30,
                color: Colors.orange,
              ),

              Positioned(
                bottom: 0,
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.orange.withOpacity(0.8),
                )),
                Container(
                  margin:EdgeInsets.symmetric(horizontal: 30),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),
                  color: Colors.white,
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: SingleChildScrollView(  
                    child: Column(
                      children: [
                        // SizedBox(height: 30,),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                        //   children: [
                        //     Text("For"),
                        //     Container(
                        //       padding: EdgeInsets.all(10),
                        //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                        //       color: Colors.grey.withOpacity(0.3)
                        //       ),
                        //       child: Text("assign"),
                        //     ),
                        //     SizedBox(width: 10,),
                        //     Text("in"),
                        //     Container(
                        //       padding: EdgeInsets.all(10),
                        //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                        //       color: Colors.grey.withOpacity(0.3)
                        //       ),
                        //       child: Text("project"),

                        //     )
                        //   ],
                        // ),
                        SizedBox(height: 20,),
                        Container(
                          padding: EdgeInsets.all(5),
                          color: Colors.grey.withOpacity(0.2),
                          child: TextField(
                            decoration: InputDecoration(  
                              hintText: "title",
                              border: InputBorder.none
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(" Discription"),
                              SizedBox(height: 10,),
                              Container(
                                height: 150,
                                width: double.infinity,
                                // color: Colors.white,
                                decoration: BoxDecoration(  
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(15),
                                  topLeft: Radius.circular(15),
                                  
                                  
                                  ),
                                  border: Border.all(color: Colors.grey.withOpacity(0.7))
                                ),
                                
                                child:TextField(
                           
                                  maxLines: 6,
                                  
                                  decoration: InputDecoration(  
                                    hintText: " Enter Disciption",
                                    border: InputBorder.none
                                  ),
                                  
                                ),
                              ),
                              Container(
                                height: 50,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.2),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                  
                                  ),
                                  border: Border.all(color: Colors.grey.withOpacity(0.7))
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: IconButton(icon: Icon(Icons.attach_file_rounded,
                                      color: Colors.black,),
                                      onPressed: (){},

                                      ),
                                    ),
                                    
                                  ],
                                ),
                              ),
                              SizedBox(
                                      height: 22,
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      color: Colors.grey.withOpacity(0.2),
                                      child: TextField(
                                        decoration: 
                                        
                                        InputDecoration(
                                          hintText: "Date",
                                          border: InputBorder.none
                                        ),
                                      ),
                                    ),
                                    // SizedBox(height: 10,),
                                    // Text('Members'),
                                    // SizedBox(height: 10,),
                                    // Container(
                                    //   padding: EdgeInsets.all(15),
                                    //   decoration: BoxDecoration(
                                    //     borderRadius: BorderRadius.circular(20),
                                    //     color: Colors.grey.withOpacity(0.2)
                                    //   ),
                                    //   child: Text("Search contats"),
                                    // ),
                                    SizedBox(height:20),
                                    Container(
                                      padding: EdgeInsets.symmetric(vertical:15),
                                      width: double.infinity,
                                      decoration: BoxDecoration(  
                                        borderRadius: BorderRadius.all(Radius.circular(19)),
                                        color: Colors.orange,
                                        
                                      ),
                                      child: Center(child: Text("Add Task", style: TextStyle(fontSize: 20),)),
                                    )

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )

            ],
          ),
        ),
      );
    
  }
}