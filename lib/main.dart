import 'package:flutter/material.dart';

void main() {
  runApp(new chitchatApp());
}

class chitchatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "ChitChat",
      home: new ChatScreen(),
      );
  }

}

class ChatScreen extends StatefulWidget {
  @override
  State createState() {
    new _ChatScreenState();
  }

}

class _ChatScreenState extends State<ChatScreen>{
  final TextEditingController _textEditingController = new TextEditingController();

void _handleSubmitted(String text){
  _textEditingController.clear();
}

  Widget _buildTextComposer() {
    return new IconTheme(
      data: new IconThemeData(color: Theme.of(context).accentColor),    
    child: new Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: new Row(
        children: <Widget>[
          new Flexible(
            child: new TextField(
 controller: _textEditingController,
        onSubmitted: _handleSubmitted,
        decoration: new InputDecoration.collapsed(
          hintText: "Send a message",
            ),
          )
           ),
           new Container(
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              child: new IconButton(icon: new Icon(Icons.send),
              onPressed: () => _handleSubmitted(_textEditingController.text),
              ),
           )
            ],
       
        ),
    ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("ChitChat")),
      body: _buildTextComposer(),
    );
  }
  
}