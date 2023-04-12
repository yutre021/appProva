import 'package:appprova/view/login_view.dart';
import 'package:appprova/view/sobre_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'dart:io';
import 'dart:convert';
import 'model/user.dart';
import 'package:provider/provider.dart';

// List<User> users = [];
Future<void> main() async {
  // var recivedata;
  // final File file = File('D:/AppsInJavaDK/appprova/lib/data/data.json');
  // await readPlayerData(file);
  runApp(const MyApp());
  // writeData(recivedata, file);
  configLoading();


}
//
// Future<void> writeData(var Recivedata, File file) async {
//   users.add(Recivedata);
//   users  //convert list data  to json
//       .map(
//         (user) => user.toJson(),
//   )
//       .toList();
//   file.writeAsStringSync(json.encode(users));  //write (the whole list) to json
// }
// Future<void> readPlayerData (File file) async {
//
//   String contents = await file.readAsString();
//   var jsonResponse = jsonDecode(contents);
//   for(var p in jsonResponse){
//     User user = User(p['id'],p['name'],p['email'],p['phone'],p['password']);
//     users.add(user);
//   }
//
//
// }


void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.wave
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = const Color.fromARGB(255, 255, 200, 0)
    ..backgroundColor = const Color.fromARGB(255, 0, 0, 0)
    ..indicatorColor = const Color.fromARGB(255, 255, 200, 0)
    ..textColor = const Color.fromARGB(255, 255, 200, 0)
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = false;
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Auth Role',
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
      initialRoute: '/Login',
      routes: {
        '/Login': (context) => const LoginPage(),
        // '/Register': (context) => RegisterScreen(),
        // '/Home': (context) => HomeScreen(),
      },
      builder: EasyLoading.init(),
    );
  }
}
