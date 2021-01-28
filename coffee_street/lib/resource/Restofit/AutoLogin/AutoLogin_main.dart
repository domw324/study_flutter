import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(ExAutoLogin());

class ExAutoLogin extends StatefulWidget {
  @override
  _ExAutoLoginState createState() => _ExAutoLoginState();
}

class _ExAutoLoginState extends State<ExAutoLogin> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auto Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController phoneNumberController = TextEditingController();

  bool isLoggedIn = false;
  String phoneNumber = '';

  @override
  void initState() {
    super.initState();
    autoLogIn();
  }

  void autoLogIn() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String userPhoneNumber = prefs.getString('phoneNumber');

    if(userPhoneNumber != null) {
      setState(() {
        isLoggedIn = true;
        phoneNumber = userPhoneNumber;
      });
      return;
    }
  }

  Future<Null> logout() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('phoneNumber', null);

    setState(() {
      phoneNumber = '';
      isLoggedIn = false;
    });
  }

  Future<Null> loginUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('phoneNumber', phoneNumberController.text);

    setState(() {
      phoneNumber = phoneNumberController.text;
      isLoggedIn = true;
    });

    phoneNumberController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Auto Login Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            !isLoggedIn ? TextField(
              textAlign: TextAlign.center,
              controller: phoneNumberController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Please enter your phone number',
              ),
            ) : Text('You are logged in as $phoneNumber'),
            SizedBox(height: 10.0,),
            RaisedButton(
              onPressed: () {
                isLoggedIn ? logout() : loginUser();
              },
              child: isLoggedIn ? Text('Logout') : Text('Login'),
            )
          ],
        ),
      ),
    );
  }
}