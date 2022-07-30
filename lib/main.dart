import 'package:flutter/material.dart';
import 'package:hive/hive.dart';



import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive_sample_apk/db/model/data_model.dart';

import 'package:hive_sample_apk/screens/home_screen.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
await Hive.initFlutter();
if(!Hive.isAdapterRegistered(StudentModelAdapter().typeId)){
  Hive.registerAdapter(StudentModelAdapter());
}
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

