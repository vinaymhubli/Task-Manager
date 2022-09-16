import 'package:flutter/material.dart';
class HosaNote extends StatefulWidget {
  HosaNote({Key? key}) : super(key: key);

  @override
  State<HosaNote> createState() => _HosaNoteState();
}

class _HosaNoteState extends State<HosaNote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        elevation: 0,
        title: Text("Note", style: TextStyle(
            fontSize: 30
        ),),
        
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
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(7)),
                  color: Colors.white
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Container(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Description", style: TextStyle(
                                
                            ),),
                            SizedBox(height: 10,),
                            Container(
                              height: 190,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(15), topLeft: Radius.circular(15)),
                                  border: Border.all(
                                      color: Colors.grey.withOpacity(0.5)
                                  )
                              ),
                              child: TextField(
                                maxLines: 6,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Add description here",
                                ),
                                style: TextStyle(
                                    
                                ),
                              ),
                            ),
                            Container(
                              height: 50,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.2),
                                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(15), bottomLeft: Radius.circular(15)),
                                  border: Border.all(
                                      color: Colors.grey.withOpacity(0.5)
                                  )
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    child: IconButton(
                                      icon: Icon(Icons.attach_file_rounded, color:  Colors.black,),
                                      onPressed: (){},
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 60,),
                            Text("Color", style: TextStyle(
                                fontSize: 18
                            ),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                    color: Color.fromARGB(255, 81, 20, 40)
                                  ),
                                ),
                                SizedBox(width: 5,),
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(5)),
                                      color: Color.fromARGB(255, 44, 120, 9)
                                  ),
                                ),
                                SizedBox(width: 5,),

                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(5)),
                                      color: Color.fromARGB(255, 217, 89, 25)
                                  ),
                                ),
                                SizedBox(width: 5,),

                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(5)),
                                      color: Color.fromARGB(255, 181, 14, 86)
                                  ),
                                ),
                                SizedBox(width: 5,),

                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(5)),
                                      color: Color.fromARGB(255, 240, 248, 6)
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 80,),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 15),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(15)),
                                  color: Colors.orange
                              ),
                              child: Center(
                                child: Text("Add Note", style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18
                                ),),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}