import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:todoapplication/model/datamodel.dart';

ValueNotifier<List<notemodel>> notelistnotifier = ValueNotifier([]);

Future<void> addstudents(notemodel value) async {
  final ndb = await Hive.openBox<notemodel>("notedb");
  final _id = await ndb.add(value);
  value.id = _id;
  notelistnotifier.value.add(value);
  notelistnotifier.notifyListeners();
}

Future<void> getallnotes() async {
  final ndb = await Hive.openBox<notemodel>("notedb");
  notelistnotifier.value.clear();
  notelistnotifier.value.addAll(ndb.values);
  notelistnotifier.notifyListeners();
}

Future<void> deletestudent(int id) async {
  final ndb = await Hive.openBox<notemodel>("notedb");
  await ndb.delete(id);
  getallnotes();
}
