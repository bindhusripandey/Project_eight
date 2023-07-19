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
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  List<String> title=["Home","Email","Alarm","Wallet","Backup","Book","Camera",
    "Person","Print","Phone","Notes","Music"];
  List<IconData> icon=[Icons.home,Icons.email,Icons.alarm,Icons.wallet,Icons.backup,
  Icons.book,Icons.camera_alt,Icons.person,Icons.print,Icons.phone,
    Icons.speaker_notes,Icons.music_note];
  List<Color> colors=[Color(0xFFaaa13c),Color(0xFFb3b9b5),Color(0xFFb88386),Color(0xFFc6204e),
  Color(0xFFb0ad9e),Color(0xFF73af93),Color(0xFFb94fe3),Color(0xFFb77962),Color(0xFF88e6a8),
  Color(0xFFbc3894),Color(0xFF9b8695),Color(0xFFb6b6b4)];

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back,
          color: Colors.white,
        ),
            backgroundColor: Colors.blue,
            title: Text("Grid View",style: TextStyle(
              fontSize: 24,fontWeight: FontWeight.w500,
              color: Colors.white,
            ),),
          ),
          body: Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
              height: 600,
              child: GridView.builder(
                  itemCount: title.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ) ,
                  itemBuilder: (BuildContext context,index){
                  return Container(
                  decoration: BoxDecoration(
                   color: colors[index],
                  borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        icon[index],
                        size: 40,
                      ),
                        SizedBox(height: 14,),
                        Text(
                          title[index],
                          style: TextStyle(
                            fontSize: 24,
                              fontWeight: FontWeight.bold),
                  ),
                      ]
                         ),
                ),
                  );
            }
            ),
            ),
          ),
          );
  }
}
