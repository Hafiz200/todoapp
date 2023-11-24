import 'package:flutter/material.dart';
import 'package:todoapplication/db/functions/dbfunctions.dart';
import 'package:todoapplication/view/addnotes.dart';
import 'package:todoapplication/view/listnotes.dart';


class homescreen extends StatelessWidget {
  const homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    getallnotes();
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [addnotes(), Expanded(child: listnotes())],
      )),
    );
  }
}
