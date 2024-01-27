import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:icar/src/resources/register_page.dart';

import '../../values/app_assets.dart';
import '../../values/app_color.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        constraints: BoxConstraints.expand(), //ác định các giới hạn về kích thước mà một widget
        color: Colors.white,
        child: SingleChildScrollView( // neu an hinh dai co the vuot xuong
          child: Column(
            children: [
              SizedBox(height: 50,),
              Image.asset(AppAssets.icCarGreen),
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 40, 0 , 6),
                child: Text("Welcome back!", style:
                TextStyle(fontSize: 22, color: AppColors.primaryText),),
              ),
              Text("Login to continue using iCar",
              style: TextStyle(fontSize: 16, color: AppColors.secondaryText),),
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 100, 0, 20),
                child: TextField(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  decoration: InputDecoration(
                    labelText: "Email",
                    prefixIcon: Container(
                      width: 50,
                      child: Image.asset(AppAssets.icMail),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.textFieldBorder, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                    )
                  ),
                ),
              ),
              TextField(
                style: TextStyle(fontSize: 18, color: Colors.black),
                obscureText: true, // an mat khau
                decoration: InputDecoration(
                  labelText: "Password",
                  prefixIcon: Container(
                    width: 50, child: Image.asset(AppAssets.icLock),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    borderSide: BorderSide(color: AppColors.textFieldBorder, width: 1),
                  )
                ),
              ),
              Container(
                // constraints: BoxConstraints.loose(Size(double.infinity, 30)),
                alignment: AlignmentDirectional.centerEnd,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Text(
                    "Forgot password?",
                     style: TextStyle(fontSize: 16, color: AppColors.secondaryText),
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 40),
                child: SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: (){},
                    child: Text(
                      "Log In",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.buttonColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      ),
                  ),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: RichText(
                  text: TextSpan(
                    text: "New user? ",
                    style: TextStyle(color: AppColors.secondaryText, fontSize: 16),
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()..onTap=(){// tao su kien giong InkWell
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterPage()));
                          },
                        text:  "Sign up for a new account",
                        style: TextStyle(
                          color: AppColors.buttonColor, fontSize: 16
                        )
                      )
                    ]
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
