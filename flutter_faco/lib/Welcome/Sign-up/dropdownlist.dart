import 'package:flutter/material.dart';

class DropDownList extends StatefulWidget {
  @override
  _DropDownListState createState() => _DropDownListState();
}

class _DropDownListState extends State<DropDownList> {
  String dropdownValue = 'Nam';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          // color: Colors.blue,
          child: DropdownButton<String>(

            value: dropdownValue,
            underline: Container(),
            icon: Icon(Icons.arrow_drop_down),
            // iconSize: 20.0, // can be changed, default: 24.0
            // iconEnabledColor: Colors.red,
            onChanged: (String newValue) {
              setState(() {
                dropdownValue = newValue;
              });
            },
            items: <String>['Nam', 'Nữ', 'Khác']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}