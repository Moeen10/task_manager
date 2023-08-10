import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:task_manager/ui/screen/reset_password.dart';
import 'package:task_manager/ui/widgets/commonWidgets.dart';

// ignore: camel_case_types
class Otp_Verify_Screen extends StatefulWidget {
  const Otp_Verify_Screen({Key? key}) : super(key: key);

  @override
  State<Otp_Verify_Screen> createState() => _Otp_Verify_ScreenState();
}

// ignore: camel_case_types
class _Otp_Verify_ScreenState extends State<Otp_Verify_Screen> {
  // ignore: non_constant_identifier_names
  void _passwordReset(){
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const Password_Reset(),), (route) => false);
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
                    Text("OTP Verification",style: Theme.of(context).textTheme.headlineLarge),
                    const SizedBox(height: 4,),
                    Text("A 6 digits pin will sent to your email address",style: Theme.of(context).textTheme.bodyMedium),
                    const SizedBox(height: 20,),
                    PinCodeTextField(
                      length: 4,
                      obscureText: false,
                      animationType: AnimationType.fade,
                      enablePinAutofill: true,
                      keyboardType: const TextInputType.numberWithOptions(),
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(5),
                        fieldHeight: 50,
                        fieldWidth: 40,
                        activeFillColor: Colors.black12,
                        activeColor: Colors.pink,
                        inactiveColor:Colors.green ,
                        inactiveFillColor:Colors.white,
                        selectedColor: Colors.black,
                        selectedFillColor: Colors.white,

                      ),
                      animationDuration: const Duration(milliseconds: 300),
                      enableActiveFill: true,


                      onCompleted: (v) {
                        print("Completed");
                      },
                      onChanged: (value) {
                        print(value);
                        setState(() {

                        });
                      },
                      beforeTextPaste: (text) {
                        print("Allowing to paste $text");
                        //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                        //but you can show anything you want here, like your pop up saying wrong paste format or etc
                        return true;
                      }, appContext: context,
                    ),


                    const SizedBox(height: 20,),
                    CustomButton(onPressed: _passwordReset, buttonText: 'Verify',),
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
