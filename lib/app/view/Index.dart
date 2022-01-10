import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Flutter UI',
            style: TextStyle(
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        backgroundColor: Colors.white,
        shadowColor: Color(0xFFFFFFFF),
      ),
      // drawer: Drawer(),
      drawerDragStartBehavior: DragStartBehavior.start,
      body: Container(
        margin: EdgeInsets.only(top: 5),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/OneRegister");
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      height: 120,
                      child: Center(
                          child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      )),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
