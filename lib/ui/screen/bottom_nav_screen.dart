

import 'package:flutter/material.dart';
import 'package:task_manager/ui/screen/cancle_screen.dart';
import 'package:task_manager/ui/screen/completed_screen.dart';
import 'package:task_manager/ui/screen/in_progress_screen.dart';
import 'package:task_manager/ui/screen/new_task_screen.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _selectedIndexScreen =0;
  final  List<Widget> _screens= const [
    NewTaskScreen(),
    InProgressScreen(),
    CompletedScreen(),
    CancleScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndexScreen],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndexScreen,
        unselectedItemColor: Colors.black,
        unselectedLabelStyle: TextStyle(
          color: Colors.black,
        ),
        showUnselectedLabels: true,
        selectedItemColor: Colors.green,
        onTap: (int index){
            _selectedIndexScreen=index;
            if(mounted){
              setState(() {

              });
            }
        },
        selectedLabelStyle: TextStyle(
          color: Colors.green,
        ),
        showSelectedLabels: true,

        items: const [
          BottomNavigationBarItem(icon:Icon(Icons.home_filled),label: 'New'),
          BottomNavigationBarItem(icon:Icon(Icons.track_changes),label: 'In Precess'),
          BottomNavigationBarItem(icon: Icon(Icons.cloud_done),label: "Done"),
          BottomNavigationBarItem(icon: Icon(Icons.cancel_outlined),label: "Canceled"),
        ],
      ),
    );
  }
}
