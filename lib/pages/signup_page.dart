import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_1/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                "Sign Up".text.xl5.bold.color(context.theme.accentColor).make(),
                "Create your account".text.xl2.make(),
                CupertinoFormSection(
                  header: "Personal Details"
                      .text
                      .color(context.theme.accentColor)
                      .make(),
                  children: [
                    CupertinoFormRow(
                      child: CupertinoTextFormFieldRow(
                        placeholder: "Enter Name",
                      ),
                      prefix:
                          "Name".text.color(context.theme.accentColor).make(),
                    ),
                    CupertinoFormRow(
                      child: CupertinoTextFormFieldRow(
                        placeholder: "Enter Phone",
                      ),
                      prefix:
                          "Phone".text.color(context.theme.accentColor).make(),
                    )
                  ],
                ),
                CupertinoFormSection(
                  header: "User".text.color(context.theme.accentColor).make(),
                  children: [
                    CupertinoFormRow(
                      child: CupertinoTextFormFieldRow(
                        placeholder: "Enter Email",
                      ),
                      prefix:
                          "Email".text.color(context.theme.accentColor).make(),
                    ),
                    CupertinoFormRow(
                      child: CupertinoTextFormFieldRow(
                        obscureText: true,
                      ),
                      prefix: "Password"
                          .text
                          .color(context.theme.accentColor)
                          .make(),
                    ),
                    CupertinoFormRow(
                      child: CupertinoTextFormFieldRow(
                        obscureText: true,
                      ),
                      prefix: "Confirm Password"
                          .text
                          .color(context.theme.accentColor)
                          .make(),
                    ),
                  ],
                ),
                CupertinoFormSection(
                  header: "Terms & Conditions"
                      .text
                      .color(context.theme.accentColor)
                      .make(),
                  children: [
                    CupertinoFormRow(
                      child: CupertinoSwitch(
                        value: true,
                        onChanged: (value) {},
                      ),
                      prefix: "I Agree"
                          .text
                          .color(context.theme.accentColor)
                          .make(),
                    ),
                  ],
                ),
                20.heightBox,
                Material(
                  color: context.theme.buttonColor,
                  borderRadius: BorderRadius.circular(8),
                  child: InkWell(
                    onTap: () =>
                        Navigator.pushNamed(context, MyRoutes.LoginRoute),
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: 150,
                      height: 50,
                      alignment: Alignment.center,
                      child: Text(
                        "SignUp",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ),
                ).centered(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
