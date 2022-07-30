import 'package:flutter/material.dart';
import 'package:hive_sample_apk/db/function/db_functions.dart';
import 'package:hive_sample_apk/db/model/data_model.dart';
class ListStudentWidget extends StatelessWidget {
  const ListStudentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: studentListNotifier,
      builder: (BuildContext context,List<StudentModel> newStudentList,Widget?child) {

        return ListView.separated(
            itemBuilder: (ctx,index){
               final data=newStudentList[index];
              return ListTile(
                title: Text('Name :${data.Name}'),
                subtitle: Text('Age  :${data.Age}'),
                trailing:IconButton(onPressed: (){
                  if(data.id!=null){
                    deleteStudent(data.id!);
                  }else{
                    print("Student list is null.Unable to delete");
                  }

                }, icon: Icon(Icons.delete),color: Colors.red,)
              );
            },
            separatorBuilder: (ctx,index){
              return const Divider();
            },
            itemCount: newStudentList.length);
      }
    );
  }
}
