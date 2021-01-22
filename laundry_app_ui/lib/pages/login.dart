import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:laundry_app_ui/utils/constants.dart';
import 'package:laundry_app_ui/utils/helper.dart';
import 'package:laundry_app_ui/widgets/app_button.dart';
import 'package:laundry_app_ui/widgets/input_widget.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.primaryColor,
      body: SafeArea(
        bottom: false,
        child: Container(
          child: Stack(
            overflow: Overflow.visible,
            children: [
              Positioned(
                right: 0.0,
                top: -20.0,
                child: Opacity(
                  opacity: 0.3,
                  child: Image.asset(
                    "assets/images/washing_machine_illustration.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 15.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            FlutterIcons.keyboard_backspace_mdi,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          "Log in to your account",
                          style: Theme.of(context).textTheme.headline6.copyWith(
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0),
                        ),
                        color: Color.fromRGBO(245, 247, 249, 1),
                      ),
                      padding: EdgeInsets.all(24.0),
                      child: Form(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            InputWidget(
                              topLabel: "Email",
                              hintText: "Enter your email address",
                            ),
                            SizedBox(
                              height: 25.0,
                            ),
                            InputWidget(
                              topLabel: "Password",
                              hintText: "Enter your email address",
                              obscureText: true,
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              "Forgot Password?",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Constants.primaryColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            AppButton(
                              type: ButtonType.PRIMARY,
                              text: "Login",
                              onPressed: () {
                                nextScreen(context, "/dashboard");
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}