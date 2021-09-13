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
      //home: HomePage(title: 'Smart Task Demo Page'),
      initialRoute: '/home',
      routes: <String,WidgetBuilder>{
        '/home':(BuildContext context) => HomePage(title:'page B'),
        '/lock':(BuildContext context) => LockPage(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyDrawerPageState createState() => _MyDrawerPageState();
}

class _MyDrawerPageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home:Scaffold(
        key: _key,
        appBar: AppBar(
          elevation: 0,
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

                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ), child: null,
                ),
              ),
              _drawerListTile('Home','/home'),
              _drawerListTile('Lock','/lock'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _drawerListTile<T>(String text,String pushName){
    return Container(
      child: ListTile(
        title: Text(text),
        trailing: Icon(Icons.arrow_forward),
        onTap: (){
          Navigator.of(context).pushNamed(
              pushName,
            // arguments: {
            //   'items':itemName,
            //   'int':itemNameint,
            //   'itemshoge':itemNames,
            // }
          );
        }
      ),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 1.0,color:Colors.grey)),
      ),
    );
  }
}


