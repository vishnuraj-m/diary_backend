import 'package:diary_backend/screens/login_page.dart';
import 'package:diary_backend/screens/main_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GettingStartedPage extends StatelessWidget {
  const GettingStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.lightGreenAccent,
      child: Column(
        children: [
          Spacer(),
          Text(
            'My Life Diary',
            style: Theme.of(context).textTheme.headline4,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '"Document your life"',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Colors.black26,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: TextButton.icon(
              style: TextButton.styleFrom(
                textStyle: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              icon: Icon(Icons.login_rounded),
              label: Text('Email Sign In to Get Started'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
            ),
          ),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              onPrimary: Colors.black,
              fixedSize: Size(double.infinity, 40),
            ),
            icon: FaIcon(
              FontAwesomeIcons.google,
              color: Colors.red,
            ),
            onPressed: () {},
            label: Text('Sign Up with Google'),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: TextButton.icon(
              style: TextButton.styleFrom(
                textStyle: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              icon: Icon(Icons.login_rounded),
              label: Text('Later'),
              onPressed: () {},
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
