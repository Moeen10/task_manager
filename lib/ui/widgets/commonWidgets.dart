import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_manager/ui/utills/assets_utills.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({Key? key,required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget> [

    SizedBox(
    width: double.infinity,
      height: double.infinity,
      child: SvgPicture.asset(
        AssetsUtills.background,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
    ),
        child,
    ]
    );
  }
}

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;

  const CustomButton({super.key, required this.onPressed,required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: const Icon(Icons.arrow_circle_right),
        label: Text(buttonText),
      ),
    );
  }
}

