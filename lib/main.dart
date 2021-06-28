import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 60.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.green
                  ),
                  child: Icon(Icons.local_offer,color: Colors.white,),
                ),
                Container(
                  height: 60.0,
                  width: 60.0,
                  margin: EdgeInsets.only(right: 50.0,top: 50.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color:Color(0xFFFF45F4)
                  ),
                  child: Icon(Icons.home,color:Colors.white),
                ),
                Container(
                  height: 60.0,
                  width: 60.0,
                  margin: EdgeInsets.only(left: 50.0,top: 50.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color:Color(0xFFFF4455)
                  ),
                  child: Icon(Icons.local_car_wash,color:Colors.white),
                ),
                Container(
                  height: 60.0,
                  width: 60.0,
                  margin: EdgeInsets.only(left: 50.0,bottom: 50.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color:Color(0xF45555FF)
                  ),
                  child: Icon(Icons.place,color:Colors.white),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "Quick Bee",
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      alignment: Alignment.center,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF18D191),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Text(
                        'Sign in with email',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      alignment: Alignment.center,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: Colors.blue[900],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Text(
                        'Facebook',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      alignment: Alignment.center,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: Colors.red[900],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Text(
                        'Google',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
