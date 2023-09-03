import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'mockup/data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UBU APP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.grey[200],
      ),
      home: const MyHomePage(title: 'UBU APP'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title});

  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  List<dynamic> courses = [];

  void _incrementCounter() {
    setState(() {
      _counter++;
      courses.add(randomCourse());
    });
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 600;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            onPressed: () {
              // Handle the profile icon press
            },
          ),
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
            onPressed: () {
              // Handle the profile icon press
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.home),
              title: Text(
                'หน้าแรก',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onTap: () {
                // Handle when menu item 1 is tapped
              },
            ),
            ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text(
                'ปฏิทิน',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onTap: () {
                // Handle when menu item 2 is tapped
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.school),
              title: Text(
                'ลงทะเบียนแล้ว',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onTap: () {
                // Handle logout
              },
            ),
            ListTile(
              leading: Icon(Icons.checklist_rtl_rounded),
              title: Text(
                'สิ่งที่ต้องทำ',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onTap: () {
                // Handle logout
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text(
                'ออกจากระบบ',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onTap: () {
                // Handle logout
              },
            ),
          ],
        ),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: isMobile ? 1 : 4,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: isMobile ? 3 : 1.5,
        ),
        itemCount: courses.length,
        itemBuilder: (context, index) {
          final course = courses[index];

          return Card(
            elevation: 2,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(11.0),
            ),
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: isMobile ? 400 : 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage(course[3]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15), // Adjust the padding as needed
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        course[0].toString() + " " + course[1],
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 50), // Add spacing between title and subtitle
                      Text(
                        course[2],
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'เพิ่ม',
        child: const Icon(Icons.add),
      ),
    );
  }
}
