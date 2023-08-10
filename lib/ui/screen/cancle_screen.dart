import 'package:flutter/material.dart';


class CancleScreen extends StatelessWidget {
  const CancleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Cancle Page"),
            ],
          ),
        ),
      ),
    );
  }
}
