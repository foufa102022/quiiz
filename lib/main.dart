
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const MyHomePage(title: 'quiz App'),
       debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
   final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
 @override
 Widget build(BuildContext context){
   return Scaffold(
    appBar: AppBar(
      title : Text(widget.title),

      actions: [
        IconButton(
          onPressed:(){},
         icon: Icon(Icons.cloud)
         ),
         ],
    ),
   body: Center(
    child:Column(
      children: [
        Text("My Questions ?"),
        ElevatedButton(onPressed: (){},
         child: Text("Reponse1")),
          ElevatedButton(onPressed: (){},
          child: Text("Reponse2")),
          ElevatedButton(onPressed: (){},
          child: Text("Reponse3")),
      ],
    ),
   ),
 
drawer : MyDrawer(),
    );
 }
}
  class MyDrawer extends StatelessWidget{
  const MyDrawer({
    Key? key,
  }):super(key: key);
  @override
Widget build (BuildContext context){
  return Drawer(
    child: ListView(
    padding:EdgeInsets.zero,
    children: const<Widget>[
      DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.pink,
        ),
        child: Text(
          "Menu",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
      ListTile(
        leading: Icon(Icons.message),
        title: Text("Message"),
      ),
      ListTile(
        leading: Icon(Icons.account_circle),
        title: Text("Profile"),
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text("settings"),
      )
    ]

    ),
  );
}
}

 
       