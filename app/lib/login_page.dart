import 'package:covid_19_app/util/services.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Center(
            child: InkWell(
              child: Image.asset(
                './assets/google.png',
                height: 45.0,
              ),
              onTap: () async {

                Services().signInWithGoogle(context);
                // Navigator.pop(context);
                // Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage(
                //   title: 'COVID-19 App',
                //   hrs: 15,
                //   user: UserModel(
                //     email: "test@test.com",
                //     name: "test test",
                //     photo: "",
                //     status: "safe",
                //     uid: ""
                //   ),
                // )));
              },
            ),
          ),
          SizedBox(height: 30.0,)
        ],
      ),
    );
  }
}