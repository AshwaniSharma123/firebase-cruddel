import 'package:flutter/material.dart';
import 'taskscreen.dart';

class CreateToDo extends StatefulWidget {
  @override
  _CreateToDoState createState() => _CreateToDoState();
}

class _CreateToDoState extends State<CreateToDo> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        title: Text('Fire Crudel'),
//      ),
      body: Container(
        height: 80.0,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                 Color(0xFFFA7397),
                 Color(0xFFFDDE42),
              ],
              begin:  FractionalOffset(0.0, 0.0),
              end:  FractionalOffset(1.0, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp),
        ),
        child: Padding(
          padding:  EdgeInsets.only(top: 16.0),
          child: Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        //
                      }),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  child: Text(
                    'ToDo Tasks',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      onPressed: () {

                      }),
                ),
              ),
            ],
          )),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xFFFDDE42),
          child: Icon(
            Icons.menu,
            color: Colors.red,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => TaskScreen(),
                  ),
            );
          }),
    );
  }
}
