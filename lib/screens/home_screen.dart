import 'package:flutter/material.dart';
import 'package:hive_sample_apk/db/function/db_functions.dart';
import 'package:hive_sample_apk/widgets/add_student_widget.dart';
import 'package:hive_sample_apk/widgets/list_student_widget.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getAllStudent();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AddStudentWidget(),
            Expanded(child: ListStudentWidget())
          ],
        ),
      ),
    );
  }
}
