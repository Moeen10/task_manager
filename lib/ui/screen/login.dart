import 'package:flutter/material.dart';
import 'package:task_manager/ui/screen/bottom_nav_screen.dart';
import 'package:task_manager/ui/screen/email_verify_screen.dart';
import 'package:task_manager/ui/screen/sign_up.dart';
import 'package:task_manager/ui/utills/inputField.dart';
import 'package:task_manager/ui/widgets/commonWidgets.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<MyTextFieldState> _emailText = GlobalKey();
  final GlobalKey<MyTextFieldState> _passwordText = GlobalKey();

  void _navigateToEmailVerifyScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Email_Verify_Screen()),
    );
  }

  void _signUpPage()
  {

    Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUp(),));
  }
  void _bottomNavbar(String emailValue,String passwordValue)
  {
     print("Entered Email: $emailValue");
     print("Entered Password: $passwordValue");
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const BottomNavbar(),), (route) => false);
  }

  @override
  Widget build(BuildContext context) {

    String emailValue;
    String passwordValue;
    return Scaffold(

        body:  Background(
          child: SafeArea(
            child: Padding(

              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: SingleChildScrollView(

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Text(
                          "Get Started!!!",
                          // style: Theme.of(context).textTheme.headlineLarge
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                      ),
                      const SizedBox(height: 10,),


                      const Image(image:
                      AssetImage("assets/images/login.jpg"),

                      ),
                      const SizedBox(height: 15),
                       MyTextField( key: _emailText, nameOfLabel:"E-mail",obs:false),
                      const SizedBox(height: 15,),
                       MyTextField(key:_passwordText ,nameOfLabel:"Password",obs:true),

                      //Text Field  Eita dorkar ase

                      // const TextField(
                      //   decoration: InputDecoration(
                      //     filled: true,
                      //       fillColor: Colors.white,
                      //       labelText: "   Password",
                      //       border: OutlineInputBorder(borderRadius: BorderRadius.horizontal(left: Radius.circular(45),right:  Radius.circular(45)))
                      //     ),
                      // ),


                      // --------------------  Login Button   ---------------------------------
                      const SizedBox(height: 15,),
                      SizedBox(
                        width: double.infinity,
                        child: CustomButton(onPressed: ()=>{
                             emailValue = _emailText.currentState!.getEnteredText(),
                             passwordValue = _passwordText.currentState!.getEnteredText(),
                          _bottomNavbar(emailValue,passwordValue),
                        } , buttonText: 'Login',),
                      ),
                      TextButton(onPressed: _navigateToEmailVerifyScreen, child:const Text("Forgot password?")),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const  Text("Don't have an account?",style: TextStyle(fontWeight: FontWeight.bold),),
                          TextButton(onPressed: _signUpPage, child: const Text("create account")),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
    );
  }
}




