import 'package:flutter/material.dart';
import 'package:task_manager/ui/screen/login.dart';
import 'package:task_manager/ui/utills/inputField.dart';
import 'package:task_manager/ui/widgets/commonWidgets.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
void _login()
{
  Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
}

  @override
  Widget build(BuildContext context) {

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
                           "Sign Up",
                           // style: Theme.of(context).textTheme.headlineLarge
                            style: Theme.of(context).textTheme.headlineLarge,
                       ),
                     ),
                    const SizedBox(height: 10,),
                    const SizedBox(height: 15),
                    const MyTextField(nameOfLabel:"E-mail",obs:false),
                    const SizedBox(height: 15,),
                    const MyTextField(nameOfLabel:"First Name",obs:false),
                    const SizedBox(height: 15,),
                    const MyTextField(nameOfLabel:"Last Name",obs:false),
                    const SizedBox(height: 15,),
                    const MyTextField(nameOfLabel:"Mobile",obs:false),
                    const SizedBox(height: 15,),
                    const MyTextField(nameOfLabel:"Password",obs:true),
                    const SizedBox(height: 15,),

       // ----------------------- Sign In Button ------------------------
                    SizedBox(
                      width: double.infinity,
                      child: CustomButton(onPressed: (){}, buttonText: 'Sign In',),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const  Text("Have an account ?",style: TextStyle(fontWeight: FontWeight.bold),),
                        TextButton(onPressed: _login, child: const Text("Login")),
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




