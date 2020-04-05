import 'package:flutter/material.dart';
import 'package:whatsapp/models/call_models.dart';

class CallsScreen extends StatefulWidget {
  @override
  _CallsScreenState createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: dummyCalls.length,
      itemBuilder: (context, i) => new Column(
        children: <Widget>[
          Divider(
            height: 10.0,
          ),
          new ListTile(
            leading: new CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(dummyCalls[i].name,
                    style: new TextStyle(fontWeight: FontWeight.bold)),
                IconButton(
                  icon: Icon(
                    Icons.phone,
                    color: Theme.of(context).primaryColor,
                  ),
                  onPressed: () {
                    print("Phone Call Clicked");
                  },
                ),
              ],
            ),
            subtitle: Container(
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.arrow_upward,
                    color: Theme.of(context).accentColor,
                  ),
                  Text(
                    dummyCalls[i].date,
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 14.0),
                  ),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 5.0)),
                  Text(
                    dummyCalls[i].time,
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 14.0),
                  ),
                ],
              ),
            
            ),
          ),
        ],
      ),
    );
  }
}
