import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, });





  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 List <String> _comments=[];
 final TextEditingController textEditingController= TextEditingController();
 final FocusNode focusNode=FocusNode();
void _addComment(String val){
  setState(() {
    _comments.add(val);
  });
}
Widget _buildCommentList(){
  return ListView.builder(
    itemBuilder: (context, index) {
      if (index < _comments.length) {
        return _buildCommentItem(_comments[index]);
      }else {
       return Text("");
      }
    }
  );
}
Widget _buildCommentItem(String comment){
  return ListTile(title:Text(comment) ,);
}
  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(

        title: Text("Instagram Comment Page"),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Expanded(child: _buildCommentList()),

                Expanded(
                  child: TextField(
                    controller: textEditingController,
                    focusNode: focusNode,

                    minLines: 1,
                    maxLines: 10,
                    style: const TextStyle(fontSize: 14),
                    decoration: InputDecoration(
                        suffix: IconButton(

                           onPressed: () {  },
                          icon: Icon(Icons.send),
                        ),
                        hintText: 'Add a comment...',
                        isDense: true,
                        contentPadding:  EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                        focusedBorder:OutlineInputBorder(),
                        border: OutlineInputBorder(),
                        ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
  ])




    ));
  }
}
