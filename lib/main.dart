import 'package:flutter/material.dart';
import 'CreateToDo.dart';
import 'NewTask.dart';
void main () => runApp(MyApp());


class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Fire Crudel',
      debugShowCheckedModeBanner: false,
      home: CreateToDo(),
    );
  }

}