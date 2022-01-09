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
        title: Text('Flutter Examples'),
      ),
      drawer: Drawer(
        child: Column(
          children: [],
        ),
      ),
      body: Container(
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
                    child: Card(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 150,
                        child: Center(
                            child: Text(
                          'Register',
                          style: TextStyle(fontSize: 24),
                        )),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/OneRegister");
                    },
                    child: Card(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 150,
                        child: Center(
                            child: Text(
                          'Register',
                          style: TextStyle(fontSize: 24),
                        )),
                      ),
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
