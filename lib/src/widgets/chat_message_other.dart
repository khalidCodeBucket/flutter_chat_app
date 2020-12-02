import 'package:flutter/material.dart';

class ChatMessageOther extends StatelessWidget {
  final index;
  final Map<String, dynamic> data;
  final bool showAvatar;

  const ChatMessageOther(
      {Key key, this.index, this.data, this.showAvatar = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          if (showAvatar)
            CircleAvatar(
              backgroundImage: NetworkImage(data['photo_url']),
            )
          else
            SizedBox(width: 40.0),
          SizedBox(width: 10.0),
          Container(
            constraints: BoxConstraints(
              maxWidth: 300.0,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 12.0,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '${data['author']} said:',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontStyle: FontStyle.italic,
                    fontSize: 11.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5.0),
                Text(data['value']),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
