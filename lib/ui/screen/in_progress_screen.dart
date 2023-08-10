import 'package:flutter/material.dart';


class InProgressScreen extends StatelessWidget {
  const InProgressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("In Progress Page"),
            ],
          ),
        ),
      ),
    );
  }
}
