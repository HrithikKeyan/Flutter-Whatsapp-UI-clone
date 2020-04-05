
import 'package:flutter/material.dart';
import 'package:whatsapp/models/status_models.dart';

class StatusScreen extends StatefulWidget {
  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: dummyStatus.length,
      itemBuilder: (context, i) => new Column(
        children: <Widget>[
          Divider(
            height: 10.0,
            
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              foregroundColor: Theme.of(context).accentColor,
              radius: 27.0,
              backgroundImage:NetworkImage(dummyStatus[i].avatarUrl),
            ),
            title: new Row(
              children: <Widget>[
                new Text(dummyStatus[i].name, style: TextStyle(fontWeight: FontWeight.bold),),
              ],
            ),
            subtitle: Container(
              padding: EdgeInsets.only(top: 5.0),
              child: Row(
                children: <Widget>[
                  new Text(dummyStatus[i].date, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15.0),),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 5.0)),
                  new Text(dummyStatus[i].time,  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15.0))
                ],
              ),
              
             
            ),
          ),
        ],
      ),
    );
  }
}
