
import 'package:flutter/material.dart';
import 'package:bepumped/ui/exercises_list/widget/radio_rows.dart';

class DialogEntry extends StatefulWidget {
  DialogEntry({Key key, this.onSend}) : super(key: key);
  Function(String, String, String) onSend;
  @override
  State<StatefulWidget> createState() => _DialogEntryState();
}

class _DialogEntryState extends State<DialogEntry> {
  final _nameTextController = TextEditingController() ;
  final _descriptionTextController = TextEditingController() ;
  String choice;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AlertDialog(
      title: new Text("Add Exercise"),
      content:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
        children: <Widget>[
          TextField(
                  decoration: InputDecoration(
                      hintText: "name"
                  ),
                  controller: _nameTextController
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "description"
            ),
            keyboardType: TextInputType.multiline,
            minLines: 3,
            maxLines: null
          ),
          SizedBox(
            height: 20,
          ),
          RadioRows(
            choices: ["Resistance", "Repitition", "Duration"],
            onChanged: (choice) => this.choice = choice
          ),
          SizedBox(
            height: 70,
          )

      ],)
      ),
      actions: <Widget>[
        FlatButton(
          child: Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        FlatButton(
          child: Text('Ok'),
          onPressed: (){
            widget.onSend(_nameTextController.text, _descriptionTextController.text, this.choice);
          },
        )
      ],
    );
  }
}