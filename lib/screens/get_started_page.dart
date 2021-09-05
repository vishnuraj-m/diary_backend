import 'package:diary_backend/screens/email_login_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GettingStarted extends StatelessWidget {
  const GettingStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            FlutterLogo(
              size: 120,
            ),
            Spacer(),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                width: 200,
                child: Text(
                  'Welcome To My Diary Book',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                width: 230,
                child: Text(
                  '"Document your life"',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Spacer(),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.white,
                minimumSize: Size(double.infinity, 40),
              ),
              icon: Icon(Icons.mail_outline),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => EmailLoginPage(),
                  ),
                );
              },
              label: Text('Sign In with Email'),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                primary: Colors.black45,
                onPrimary: Colors.white,
                minimumSize: Size(double.infinity, 40),
              ),
              icon: FaIcon(
                FontAwesomeIcons.google,
                color: Colors.red,
              ),
              onPressed: () {},
              label: Text('Sign In with Google'),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                primary: Colors.redAccent,
                onPrimary: Colors.white,
                minimumSize: Size(double.infinity, 40),
              ),
              icon: Icon(Icons.login_rounded),
              onPressed: () {},
              label: Text(' Sign In Later'),
            ),
            Spacer(),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
