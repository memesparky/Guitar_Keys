import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

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

//Column Selector Array
Map NoteKeys = {
  "A♭": ["Yo", "Hi"],
  "A": ["Yo", "Hi"],
  "B♭": ["Yo", "Hi"],
  "B": ["Yo", "Hi"],
  "C": ["Yo", "Hi"],
  "C♯": ["Yo", "Hi"],
  "D♭": ["Yo", "Hi"],
  "D": ["Yo", "Hi"],
  "E♭": ["Yo", "Hi"],
  "E": ["Yo", "Hi"],
  "F": ["Yo", "Hi"],
  "F♯": ["Yo", "Hi"],
  "G♭": ["Yo", "Hi"],
  "G": ["Yo", "Hi"],
};
var Notes = {
  "A♭",
  "A",
  "B♭",
  "B",
  "C",
  "C♯",
  "D♭",
  "D",
  "E♭",
  "E",
  "F",
  "F♯",
  "G♭",
  "G"
};
String currentNote = Notes.elementAt(0).toString();
List currentList = NoteKeys[currentNote];
List NoteNumber = ["I", "ii", "iii", "IV", "V", "vi", "vii"];

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width / 3,
              child: ListView.builder(
                  itemCount: Notes.length,
                  itemBuilder: (BuildContext context, int index) {
                    return TextButton(
                      child: Text(
                        Notes.elementAt(index).toString(),
                      ),
                      onPressed: () {
                        setState(() {
                          currentNote = Notes.elementAt(index).toString();
                          currentList = NoteKeys[currentNote];
                        });
                      },
                    );
                  }),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width / 3,
              child: ListView.builder(
                  itemCount: currentList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                        child: Container(
                      child: Text(currentList[index]),
                    ));
                  }),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width / 3,
              child: ListView.builder(
                  itemCount: NoteNumber.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                        child: Container(
                      child: Text(NoteNumber[index].toString()),
                    ));
                  }),
            )
          ],
        ),
      ),
    );
  }
}
