import 'package:flutter/material.dart';


class RadioRows extends StatefulWidget {
  final List<String> choices;
  final Function(String) onChanged;
  RadioRows({Key key, this.choices, this.onChanged}) : super(key: key);
  

  @override
  _RadioRowsState createState() => _RadioRowsState();
}

class _RadioRowsState extends State<RadioRows> {
 String dropdownValue;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dropdownValue = widget.choices[0];
  }
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
          widget.onChanged(newValue);
        });
      },
      items: widget.choices
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}