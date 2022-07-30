import 'package:flutter/material.dart';
import 'package:hive_sample_apk/db/function/db_functions.dart';
import 'package:hive_sample_apk/db/model/data_model.dart';



class AddStudentWidget extends StatelessWidget {
   AddStudentWidget({Key? key}) : super(key: key);
final _nameController=TextEditingController();
final _ageController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    final mHeight=MediaQuery.of(context).size.height;
    final mWidth=MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          TextFormField(
            controller: _nameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Name",
            ),
          ),
          SizedBox(
            height: mHeight*.02,
          ),
          TextFormField(
            controller: _ageController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Age",
            ),
          ),
          SizedBox(
            height: mHeight*.02,
          ),
          ElevatedButton.icon(onPressed: (){
            onAddStudentButtonClicked();
          }, icon: Icon(Icons.add),
              label: Text('Add Student')
          )
        ],
      ),
    );
  }
  Future<void> onAddStudentButtonClicked()async{
    final _name=_nameController.text.trim();
    final _age=_ageController.text.trim();
    if(_name.isNotEmpty||_age.isNotEmpty){
      final _student= StudentModel(Name: _name, Age: _age);
      addStudent(_student);
    }

  }
}
