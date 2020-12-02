import 'package:flutter/material.dart';

class MessageForm extends StatefulWidget {
  final ValueChanged<String> onSubmit;

  MessageForm({Key key, this.onSubmit}) : super(key: key);

  @override
  _MessageFormState createState() => _MessageFormState();
}

class _MessageFormState extends State<MessageForm> {
  String _message;

  final _controller = TextEditingController();

  void _onPresed() {
    widget.onSubmit(_message);
    _message = '';
    _controller.clear();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.blue,
      padding: const EdgeInsets.all(5.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Expanded(
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: 'Type a message',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.all(10.0),
              ),
              minLines: 1,
              maxLines: 10,
              onChanged: (value) {
                setState(() {
                  _message = value;
                });
              },
            ),
          ),
          SizedBox(width: 5.0),
          RawMaterialButton(
            onPressed: _message == null || _message.isEmpty ? null : _onPresed,
            fillColor: _message == null || _message.isEmpty
                ? Colors.blueGrey
                : Theme.of(context).primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'SEND',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
