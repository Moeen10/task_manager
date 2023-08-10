import 'package:flutter/material.dart';
import 'package:task_manager/ui/screen/login.dart';
import 'package:task_manager/ui/utills/inputField.dart';
import 'package:task_manager/ui/widgets/commonWidgets.dart';

// ignore: camel_case_types
class Password_Reset extends StatefulWidget {
  const Password_Reset({Key? key}) : super(key: key);

  @override
  State<Password_Reset> createState() => _Password_ResetState();
}

// ignore: camel_case_types
class _Password_ResetState extends State<Password_Reset> {
  // ignore: non_constant_identifier_names
  void _login_Screen(){
    Navigator.push(context, MaterialPageRoute(builder: (context) =>  const Login(),));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
          child:SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Reset Password",style: Theme.of(context).textTheme.headlineLarge),
                    const SizedBox(height: 4,),
                    Text("Minimum 8 character needed",style: Theme.of(context).textTheme.bodyMedium),
                    const SizedBox(height: 20,),
                    const MyTextField( nameOfLabel: 'Password', obs:true ,),
                    const SizedBox(height: 20,),
                    const MyTextField( nameOfLabel: 'Confirm Password', obs:true ,),
                    const SizedBox(height: 20,),
                    CustomButton(onPressed: _login_Screen, buttonText: 'Ok',),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const  Text("have an account?",style: TextStyle(fontWeight: FontWeight.bold),),
                        TextButton(onPressed: (){
                          Navigator.pop(context);
                        },
                            child: const Text("SignIn")),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
      ),
    ) ;
  }
}
