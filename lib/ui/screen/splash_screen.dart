import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_manager/ui/screen/login.dart';
import 'package:task_manager/ui/utills/assets_utills.dart';
import 'package:task_manager/ui/widgets/commonWidgets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigateToLogin();
  }

  Future<void> navigateToLogin() async {
   await Future.delayed(const Duration(seconds: 4));
   Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const Login(),), (route) => false);
  }



  @override
  Widget build(BuildContext context) {

    // ---------------------------  Function -----------------------------

    // Screen Er total height ber korsi.
    double screenHeight = MediaQuery.of(context).size.height;

    // Calculate one-fourth dimensions
    double quarterHeight = screenHeight/4 ;

// --------------------------  Widget -----------------------------
    return Scaffold(
      body: Background(
        child:  Center(
            child: SvgPicture.asset(
              AssetsUtills.bgCenterPic,
              height: quarterHeight,
            )
          ),
      ),
    );
  }
}
