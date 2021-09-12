import 'package:flutter/material.dart';

class LockPage extends StatelessWidget{

  var list = ['test','test','test','test'];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('ロック画面'),
      ),
      body: Container(
        height: double.infinity,
        //color: Colors.red,
        child: Column(
          children: [
            ListView.builder(
                itemCount: 2,
                itemBuilder: (BuildContext context, int index) {
                  if(index == list.length){
                    list.addAll(['test','test','test']);
                  }
                  return _messageItem(list[index]);
                },
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
            )
          ],
        ),
      ),
    );
  }

  Widget _messageItem(String title){
    return Container(
      decoration: new BoxDecoration(
          border: new Border(bottom: BorderSide(width: 1.0,color:Colors.grey))
      ),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}