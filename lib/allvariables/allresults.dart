import 'package:student/allvariables/allresults.dart';

import 'allresults.dart';

class examresults {
  late final dynamic subjectname;
  late final dynamic subjectcode;
  late final dynamic date;
  late final dynamic percentage;
  late final dynamic status;
  late final dynamic grade;
  examresults({
required this.subjectname,
required this.subjectcode,
required this.date,
required this.percentage,
required this.status,
required this.grade,
  });

}

List<examresults> examresult =
[

examresults(subjectname: 'Data Structure', subjectcode: 'CSC 115', date: '2022-11-11', percentage: '87%', status: 'pass', grade: 'A'),
examresults(subjectname: 'Compiler Design', subjectcode: 'CSC 619', date: '2025-11-01', percentage: '99%', status: 'pass', grade: 'A+'),
examresults(subjectname: 'E-Commerce', subjectcode: 'CSC 635', date: '2025-11-01', percentage: '78%', status: 'pass', grade: 'B+'),
examresults(subjectname: 'E-Governance', subjectcode: 'CSC 601', date: '2025-11-01', percentage: '78%', status: 'pass', grade: 'B+'),
examresults(subjectname: 'Software Engineering', subjectcode: 'CSC 659', date: '2025-11-01', percentage: '91%', status: 'pass', grade: 'A-'),
examresults(subjectname: 'Technical Writing', subjectcode: 'CSC 650', date: '2025-11-01', percentage: '92%', status: 'pass', grade: 'A-'),

];

