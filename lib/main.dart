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

class _MyHomePageState extends State<MyHomePage> {
  bool english = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: const Image(
            image: NetworkImage(
                'https://raw.githubusercontent.com/huuln9/images/main/banner_2.png'),
            fit: BoxFit.cover,
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () => {},
          ),
          title: const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Setting",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(padding: EdgeInsets.only(top: 10)),
            ListTile(
              leading: const Icon(Icons.language, color: Colors.black),
              title: const Text(
                "English",
                style: TextStyle(fontSize: 18),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(right: 8.0, bottom: 8.0),
                child: IconButton(
                  icon: english
                      ? const Icon(
                          Icons.toggle_on,
                          size: 50,
                          color: Colors.green,
                        )
                      : const Icon(
                          Icons.toggle_off,
                          size: 50,
                          color: Colors.black54,
                        ),
                  onPressed: () {
                    setState(() {
                      english = !english;
                    });
                    if (english) {
                      // Get.updateLocale(const Locale('en', 'US'));
                    } else {
                      // Get.updateLocale(const Locale('vi', 'VN'));
                    }
                  },
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Divider(thickness: 1.0),
            ),
            ListTile(
              leading: const Icon(Icons.notifications, color: Colors.black),
              title: const Text(
                "Enable notifications",
                style: TextStyle(fontSize: 18),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(right: 8.0, bottom: 8.0),
                child: IconButton(
                  icon: const Icon(
                    Icons.toggle_off,
                    size: 50,
                    color: Colors.black54,
                  ),
                  onPressed: () => {},
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Divider(thickness: 1.0),
            ),
            const ListTile(
              leading: Icon(Icons.message, color: Colors.black),
              title: Text(
                "Comment",
                style: TextStyle(fontSize: 18),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Divider(thickness: 1.0),
            ),
            const ListTile(
              leading: Icon(Icons.phone_android, color: Colors.black),
              title: Text(
                "Version",
                style: TextStyle(fontSize: 18),
              ),
              trailing: Text(
                "1.0.0",
                style: TextStyle(fontSize: 18, color: Colors.blue),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Divider(thickness: 1.0),
            ),
            const ListTile(
              leading: Icon(
                Icons.ondemand_video,
                color: Colors.black,
              ),
              title: Text(
                "Instructional clips",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
