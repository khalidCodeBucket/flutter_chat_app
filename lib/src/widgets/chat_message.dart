import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  final index;
  final Map<String, dynamic> data;
  final bool hasPadding;

  const ChatMessage({
    Key key,
    this.index,
    this.data,
    this.hasPadding = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: hasPadding == true ? 15.0 : 5.0,
        bottom: 5.0,
        left: 10.0,
        right: 10.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            constraints: BoxConstraints(maxWidth: 300.0),
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(5),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 12.0,
            ),
            child: Text(
              data['value'],
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
