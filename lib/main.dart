import 'package:flutter/material.dart';

void main() {
  runApp (new MaterialApp(
    home: new HalamanPertamaku(),
  ));
}
class HalamanPertamaku extends StatelessWidget {
@override
Widget build(BuildContext context) {
  return new Scaffold(
    backgroundColor: Colors.pink[200],
    appBar: new AppBar(
      backgroundColor: Colors.red,
      leading: new Icon(Icons.home),
      title: new Center(
        child: new Text("Knowlage sharing flutter"),
      ),
      actions: <Widget>[new Icon(Icons.search)],
    ),
  );
}
}



//membuat halaman crad
class HalamanPertamaku extends StatelessWidget {
@override
Widget build(BuildContext context) {
  return new Scaffold(
    appBar: new AppBar(
      title : new Text("PORTAL RAMADAN"),
      backgroundColor: Colors.red,
    ),
    body: Container(
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          new CardSaya(
            Icon(Icons.access_alarm_sharp,
            teks : "jadwal Imsak",
            warnaIcon:Colors.pink),
          new CardSaya(
            Icon(Icons.place,
            teks : "cari masjid terdekat",
            warnaIcon:Colors.green),
          new CardSaya(
            Icon(Icons.access_alarm_rounded
            teks : "jadwal buka puasa",
            warnaIcon:Colors.brown),
          new CardSaya(
            Icon(Icons.access_alarm_sharp
            teks : "murotal al-quran",
            warnaIcon:Colors.black),
        ],
      )
          ),
    ),

}
}

class CardSaya extends StatelessWidget {
 CardSaya({required this.icon, required this.teks, required this.warnaIcon})

 final IconData icon;
 final String teks;
 final Color warnaIcon;

 @override
 Widget build(BuildContext context) {
   return new Container(
     height: 180,
     padding: new EdgeInsets.all(3.0),
     color: Colors.pink,
     child: new Card(
       child: new Column(
         children: <Widget>[
           new Icon(
             icon,
             size: 80.0,
             color: warnaIcon,
             ),
             new Text(
               teks,
               style: new TextStyle(fontSize: 23.0),
             )
         ],
       ),
     ),
   );
 }
}