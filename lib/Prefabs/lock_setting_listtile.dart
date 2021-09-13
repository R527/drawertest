import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class LockSetting extends StatefulWidget {

  @override
  _LockSetting createState() => _LockSetting();
}

class _LockSetting extends State<LockSetting>{
  bool _active = false;



  @override
  Widget _messageItem(String title){
    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: 1.0,color:Colors.grey))
      ),
      child: _LockSettingListTile(),
    );
  }

  void _changeSwitch(bool e){
    setState(() => _active = e);
  }

  Widget _lockSettingTextStyle(String text){
    return Text(
      text,
      style: TextStyle(
        color: _active ? Colors.black : Colors.grey,
      ),
    );
  }

  Widget _LockSettingListTile(){

    return ListTile(
      title: Row(
        children: [
          Column(
            children: [
              _lockSettingTextStyle('12:00 ~ 14:00'),
              Row(
                children: [
                  _lockSettingTextStyle('毎日'),
                  _lockSettingTextStyle('11分'),
                ],
              ),
            ],
          ),
          Switch(
              value: _active,
              onChanged: _changeSwitch
          )
        ],

      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

    );
  }
}

