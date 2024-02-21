import 'package:flutter/material.dart';
import 'package:stinc/reusable_widgets/reusable_widgets.dart';
import 'package:stinc/screens/signup_screen.dart';
import 'package:stinc/utils/color_utils.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _emailTextcontroller = TextEditingController();
  TextEditingController _passwordTextcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          hexStringToColor("F0F8FF"),
          hexStringToColor("F0FFFF")
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children: <Widget>[
                reusableTextField("Enter UserName: ", Icons.person_outline,
                    false, _emailTextcontroller),
                SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Password: ", Icons.lock_outline, true,
                    _passwordTextcontroller),
                SizedBox(
                  height: 5,
                ),
                signInSignUpButton(context, true, () {}),
                signUpOption()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have an account?",
            style: TextStyle(color: Colors.blue)),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUpScreen()));
            child:
            const Text(
              " Sign Up",
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            );
          },
        )
      ],
    );
  }
}
