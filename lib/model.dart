class ListItem {
  String subjectName;
  String courseName;


  ListItem({required this.subjectName,required this.courseName});
}

class addStudentModel{
  String stName;
  String stRollNo;
  String stSemester;
  String stSection;
  addStudentModel({required this.stName,required this.stRollNo,required this.stSection,required this.stSemester});
}

class TeacherList{
  String teacherName;
  String techaerNic;
  String teacherMobileNo;
  String teacherSubject;
  TeacherList({required this.teacherName,required this.techaerNic,required this.teacherSubject,required this.teacherMobileNo});
}