class Upcomingexams {
  late final dynamic subjectname1;
  late final dynamic subjectcode1;
  late final dynamic date1;
  late final dynamic Time;
  late final dynamic Location;
  late final dynamic ExamType;
  Upcomingexams({
    required this.subjectname1,
    required this.subjectcode1,
    required this.date1,
    required this.Time,
    required this.Location,
    required this.ExamType,
  });
}

List<Upcomingexams> Upcomingexam = [
Upcomingexams(subjectname1: 'Data Structure', subjectcode1: 'CSC 115', date1: '2022-11-1', Time: '9:00', Location: 'Hall', ExamType: 'Mid-Term'),
Upcomingexams(
  subjectname1: 'Operating Systems',
  subjectcode1: 'CSC 221',
  date1: '2022-11-03',
  Time: '11:00',
  Location: 'Room 204',
  ExamType: 'Final'
),

Upcomingexams(
  subjectname1: 'Computer Networks',
  subjectcode1: 'CSC 305',
  date1: '2022-11-05',
  Time: '10:00',
  Location: 'Auditorium',
  ExamType: 'Mid-Term'
),

Upcomingexams(
  subjectname1: 'Database Management Systems',
  subjectcode1: 'CSC 301',
  date1: '2022-11-07',
  Time: '12:30',
  Location: 'Lab 1',
  ExamType: 'Final'
),

Upcomingexams(
  subjectname1: 'Software Engineering',
  subjectcode1: 'CSC 310',
  date1: '2022-11-09',
  Time: '9:00',
  Location: 'Main Hall',
  ExamType: 'Mid-Term'
),

Upcomingexams(
  subjectname1: 'Artificial Intelligence',
  subjectcode1: 'CSC 401',
  date1: '2022-11-11',
  Time: '2:00',
  Location: 'Room 101',
  ExamType: 'Quiz'
),





];
