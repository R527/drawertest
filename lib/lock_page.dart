import 'package:drawertest/Prefabs/lock_setting_listtile.dart';
import 'package:flutter/material.dart';


class LockPage extends StatefulWidget {
  @override
  _LockPage createState() => _LockPage();
}

//
class _LockPage extends State<LockPage>{

  LockSetting _lockSetting = LockSetting();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('ロック管理'),
      ),
      body: Container(
        height: double.infinity,
        //color: Colors.red,
        // child: Column(
        //   children: [
        //     ListView.builder(
        //       shrinkWrap: true,
        //       physics: NeverScrollableScrollPhysics(),
        //       itemCount: 2,
        //       itemBuilder: (BuildContext context, int index) {
        //       //return
        //       },
        //     )
        //   ],
        // ),
      ),
    );
  }


}