import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_edu_app_with_firebase/services/Auth.dart';
import 'sign_in_button/sign_in_button.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key key, @required this.auth})
      : super(key: key);

  final AuthBase auth;

  Future<void> _signInAnonymously() async {
    try {
      await auth.signInAnonymously();
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Tracker'),
        elevation: 2,
      ),
      body: _buildContainer(),
      backgroundColor: Colors.grey[100],
    );
  }

  Widget _buildContainer() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Sign in with',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 28,
          ),
          SocialSignInButton(
            assetName: 'images/google-logo.png',
            text: "Google",
            color: Colors.white,
            textColor: Colors.black87,
            onPressed: () {},
          ),
          SizedBox(
            height: 8,
          ),
          SocialSignInButton(
            assetName: 'images/facebook-logo.png',
            text: "Facebook",
            color: Color(0xFF334D92),
            textColor: Colors.white,
            onPressed: () {},
          ),
          SizedBox(
            height: 8,
          ),
          SignInButton(
            text: "e-mail",
            color: Colors.teal,
            textColor: Colors.white,
            onPressed: () {},
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "or",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.black38),
          ),
          SizedBox(
            height: 8,
          ),
          SignInButton(
            text: "anon",
            color: Colors.teal,
            textColor: Colors.white,
            onPressed: _signInAnonymously,
          ),
        ],
      ),
    );
  }
}
