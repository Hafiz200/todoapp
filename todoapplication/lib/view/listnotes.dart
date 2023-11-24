import 'package:flutter/material.dart';
import 'package:hive_project/db/functions/dbfunctions.dart';
import 'package:hive_project/model/datamodel.dart';
import 'package:todoapplication/model/datamodel.dart';

class listnotes extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: notelistnotifier,
      builder: (BuildContext context, List<notemodel> studentlist,
          Widget? child) {
        return ListView.separated(
            itemBuilder: (context, index) {
              final data = studentlist[index];
              return ListTile(
                title: Text(data.title),
                subtitle: Text(data.desc),
                trailing: IconButton(
                    onPressed: () {
                      if (data.id != null) {
                        deletestudent(data.id!);
                      } else {
                        print("Student id is null.Unable to delete");
                      }
                    },
                    icon: Icon(
                      Icons.delete,
                      color: Colors.red,
                    )),
              );
            },
            separatorBuilder: ((context, index) {
              return Divider();
            }),
            itemCount: studentlist.length);
      },
    );
  }
}
