import 'package:flutter/material.dart';

import 'package:todoapplication/model/datamodel.dart';

class addnotes extends StatelessWidget {
  final titlecontroller = TextEditingController();
  final desccontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          TextFormField(
            controller: titlecontroller,
            decoration:
                InputDecoration(border: OutlineInputBorder(), hintText: "Title"),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: desccontroller,
            decoration:
                InputDecoration(border: OutlineInputBorder(), hintText: "Desc"),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton.icon(
              onPressed: () {
                onaddstudentbuttonclicked();
              },
              icon: Icon(Icons.add),
              label: Text("Add Student"))
        ],
      ),
    );
  }

  Future<void> onaddstudentbuttonclicked() async {
    final title = titlecontroller.text.trim();
    final desc = desccontroller.text.trim();
    if (title.isEmpty || desc.isEmpty) {
      return;
    }
    // print("$name $age");
    final note = notemodel(title: title, desc: desc);
    addnotes(note);
  }
}
