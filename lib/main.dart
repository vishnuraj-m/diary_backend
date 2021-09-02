import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:diary_backend/screens/get_started_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'My Diary Book',
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          primarySwatch: Colors.blueGrey,
        ),
        home: GettingStartedPage(),
      );
}

class GetInfo extends StatelessWidget {
  const GetInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('diaries').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text('Something went wrong ');
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Text('Loading..');
          }
          return new ListView(
            children: snapshot.data!.docs.map((DocumentSnapshot document) {
              return new ListTile(
                title: Text(document.get('display_name')),
                subtitle: Text(document.get('profession')),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
