import 'package:flutter/material.dart';

class NewTaskScreen extends StatelessWidget {
  const NewTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(0, 80),
        child: AppBar(
          actions: [
            Align(
              alignment: AlignmentDirectional.bottomStart,
              child: Column(
                children: [
                  Text("Hello"),
                ],
              ),
            )
          ],
        ),

      ),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(

                children: [

                  // Dash Board here
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,

                  child: Row(
                    children: [

                      Card(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        elevation:7,
                        child: Container(
                          width: 70,
                          height: 70,
                          child: Column(
                            children: const [
                              Text("123" ,style: TextStyle(fontSize: 40),),
                              Text("New"),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        elevation:7,
                        child: Container(
                          width: 70,
                          height: 70,
                          child: Column(
                            children: const [
                              Text("123" ,style: TextStyle(fontSize: 40),),
                              Text("New"),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        elevation:7,
                        child: Container(
                          width: 70,
                          height: 70,
                          child: Column(
                            children: const [
                              Text("123" ,style: TextStyle(fontSize: 40),),
                              Text("New"),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        elevation:7,
                        child: Container(
                          width: 70,
                          height: 70,
                          child: Column(
                            children: const [
                              Text("123" ,style: TextStyle(fontSize: 40),),
                              Text("New"),
                            ],
                          ),
                        ),
                      ),



                    ],
                  ),
                ),

                  // ------------There Will be New Task ----------------


              ],),
            ),
          )
      ),
    );
  }
}
