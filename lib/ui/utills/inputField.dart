import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final String nameOfLabel;
  final bool obs;
  const MyTextField({Key? key, required this.nameOfLabel, required this.obs})
      : super(key: key);

  @override
  State<MyTextField> createState() => MyTextFieldState();
}

class MyTextFieldState extends State<MyTextField> {
  bool _isFocused = false;
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  String getEnteredText() {
    return _textEditingController.text;
  }

  @override
  Widget build(BuildContext context) {
    return Focus(
      onFocusChange: (hasFocus) {
        setState(() {
          _isFocused = hasFocus;
        });
      },
      child: TextField(
        obscureText: widget.obs ? true : false,
        controller: _textEditingController,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          labelText: widget.nameOfLabel,
          labelStyle: TextStyle(
            color: _isFocused ? Colors.green : Colors.black,
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.horizontal(
              right: Radius.circular(45),
              left: Radius.circular(45),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
            borderRadius: BorderRadius.horizontal(
              right: Radius.circular(45),
              left: Radius.circular(45),
            ),
          ),
          // Add other properties as needed
        ),
      ),
    );
  }
}
