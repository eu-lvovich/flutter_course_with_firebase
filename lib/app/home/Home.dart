import 'package:flutter/material.dart';
import 'package:flutter_edu_app_with_firebase/services/Auth.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key, @required this.auth})
      : super(key: key);

  final AuthBase auth;

  void _signOut() {
    try {
      auth.logOut();
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        elevation: 2.0,
        actions: [
          IconButton(
            onPressed: _signOut,
            hoverColor: Colors.red,
            splashColor: Colors.red,
            splashRadius: 20.0,
            icon: Icon(Icons.logout),
          )
        ],
      ),
      backgroundColor: Colors.grey[200],
    );
  }
}
