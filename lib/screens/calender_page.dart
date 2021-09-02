import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class CalenderPage extends StatefulWidget {
  const CalenderPage({Key? key}) : super(key: key);

  @override
  _CalenderPageState createState() => _CalenderPageState();
}

class _CalenderPageState extends State<CalenderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calender View'),
      ),
      body: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: SfDateRangePicker(
                  onSelectionChanged: (dateRangePickerSelection) {
                    print(dateRangePickerSelection.value.toString());
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 4,
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                      size: 20,
                      color: Colors.black54,
                    ),
                    label: Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Write New',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
