import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dropdown Application Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CitySelectorPage(title: 'Dropdown City Page'),
    );
  }
}

class CitySelectorPage extends StatefulWidget {
  CitySelectorPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _CitySelectorPageState createState() => _CitySelectorPageState();
}

class _CitySelectorPageState extends State<CitySelectorPage> {

  var cities=["Ankara","İstanbul","İzmir","Kayseri"];
  String seciliIl = "Ankara";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DropdownButton<String>(
              items: cities.map((String il)
              {
                return DropdownMenuItem<String>(
                  value: il,
                  child: Text(il));
              }).toList(),
              value: seciliIl,
              onChanged: (value)=>{
                setState((){
                  seciliIl = value;
                })
              },
            ),
            Text(
              "Seçili il : "+seciliIl,
            ),
          ],
        ),
      ),
    );
  }
}
