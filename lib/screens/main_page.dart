import 'package:diary_backend/screens/calender_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

String? _dropDownText;

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButton<String>(
                  items: ['Latest', 'Earliest'].map((String value) {
                    return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(color: Colors.grey),
                        ));
                  }).toList(),
                  hint: (_dropDownText == null)
                      ? Text('Select')
                      : Text(_dropDownText!),
                  onChanged: (value) {
                    if (value == 'Latest') {
                      setState(() {
                        _dropDownText = value;
                      });
                    } else if (value == 'Earliest') {
                      setState(() {
                        _dropDownText = value;
                      });
                    }
                  },
                ),
              )
            ],
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          Expanded(
                            child: ListView.builder(
                                itemCount: 5,
                                itemBuilder: (context, index) {
                                  return SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.4,
                                    child: Card(
                                      elevation: 4.0,
                                      child: ListTile(
                                        title: Text('Hello'),
                                      ),
                                    ),
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            left: 30,
            bottom: 5,
            child: FloatingActionButton(
              backgroundColor: Colors.black54,
              heroTag: 'calender',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CalenderPage(),
                  ),
                );
              },
              child: Icon(
                Icons.calendar_today_outlined,
                size: 20,
              ),
              mini: true,
            ),
          ),
          Positioned(
            bottom: 5,
            right: 170,
            child: FloatingActionButton(
              backgroundColor: Colors.black54,
              heroTag: 'Add',
              onPressed: () {},
              child: Icon(
                Icons.add,
                size: 40,
              ),
            ),
          ),
          Positioned(
            bottom: 5,
            right: 30,
            child: FloatingActionButton(
              backgroundColor: Colors.black54,
              heroTag: 'Search',
              onPressed: () {},
              child: Icon(
                Icons.search,
                size: 20,
              ),
              mini: true,
            ),
          ),
        ],
      ),
    );
  }
}






// import 'package:flutter/material.dart';

// class MainPage extends StatefulWidget {
//   const MainPage({Key? key}) : super(key: key);

//   @override
//   _MainPageState createState() => _MainPageState();
// }

// class _MainPageState extends State<MainPage> {
//   String? _dropDownText;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
      
//     );
//   }
// }
