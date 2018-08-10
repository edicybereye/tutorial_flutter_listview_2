import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ListApp(),
  ));
}

class ListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview Session 2"),
      ),
      body: ListView(
        children: <Widget>[
          IsiListWidget(
            icon: Icons.android,
          ),
          IsiListWidget(icon: Icons.apps),
          IsiListWidget(icon: Icons.place),
          IsiListWidget(icon: Icons.home),
          IsiListWidget(icon: Icons.settings_power),
          IsiListWidget(
            icon: Icons.add_a_photo,
          ),
          IsiListWidget(
            icon: Icons.cached,
          ),
          IsiListWidget(icon: Icons.directions_run),
          IsiListWidget(icon: Icons.track_changes),
          IsiListWidget(icon: Icons.edit),
        ],
      ),
    );
  }
}

class IsiListWidget extends StatelessWidget {
  IsiListWidget({this.icon});
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: Row(
            children: <Widget>[
              Icon(icon),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Android",
                      style: TextStyle(fontSize: 20.0),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.0),
                    ),
                    Text("Keterangan Mengenai Android")
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
