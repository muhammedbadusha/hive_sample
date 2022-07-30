

import 'package:hive/hive.dart';
part 'data_model.g.dart';

@HiveType(typeId: 1)
class StudentModel{
  @HiveField(0)
   int? id;

  @HiveField(0)
  final String Name;
  
  @HiveField(1)
  final String Age;

  StudentModel({required this.Name, required this.Age,this.id});
}