import 'package:drawertest/lock_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: DrawerPage(title: 'Smart Task Demo Page'),
      initialRoute: '/',
      routes: <String,WidgetBuilder>{
        '/':(BuildContext context) => DrawerPage(title:'page B'),
        '/a':(BuildContext context) => LockPage(),
        '/b':(BuildContext context) => DrawerPage(title:'page B'),
      },
    );
  }
}

class DrawerPage extends StatefulWidget {
  DrawerPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyDrawerPageState createState() => _MyDrawerPageState();
}

class _MyDrawerPageState extends State<DrawerPage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home:Scaffold(
        key: _key,
        appBar: AppBar(

          leading: IconButton(
            icon:Icon(Icons.menu),
            onPressed: (){
              _key.currentState!.openDrawer();
              print('Drawer');
            },
          ),
        ),

        drawer: Drawer(
          child: ListView(

            children: <Widget>[
              Container(
                height: 60,
                width: double.infinity,
                child: DrawerHeader(
                  //children
                  child: Text(
                    'Home',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize:20,
                    )),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                ),
              ),
              // _drawerListTile('home',LockPage()),
              // _drawerListTile('lock',LockPage()),
              // _drawerListTile('task',LockPage()),
              // _drawerListTile('setting',LockPage()),

              ListTile(
                title: Text('ロック管理'),
                trailing: Icon(Icons.arrow_forward),
                onTap: (){
                  Navigator.of(context).pushNamed('/a');
                  print('onTap');
                  // Navigator.push(
                  //
                  //     context,
                  //     //MaterialPageRoute(builder: (context) => LockPage(),
                  //     Navigator.of(context).pushNamed('/a');
                  //    )
                  // );
                }
              ),
              ListTile(
                  title: Text('ロック予約'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LockPage(),
                        )
                    );
                  }
              ),
              ListTile(
                  title: Text('タスク管理'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LockPage(),
                        )
                    );
                  }
              ),
              ListTile(
                  title: Text('設定'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LockPage(),
                        )
                    );
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget _drawerListTile<T>(String text,T routePage){
  //   return ListTile(
  //       title: Text(text),
  //       trailing: Icon(Icons.arrow_forward),
  //       onTap: (){
  //         Navigator.push(
  //             context,
  //             MaterialPageRoute(builder: (context) => routePage,
  //             )
  //         );
  //       }
  //   );
  //}


}
