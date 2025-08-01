

import 'package:flutter/widgets.dart';

class Content {
  final String title;
  final dynamic image;
  Content({required this.title, required this.image});
}

List<Content> contents = [
  Content(
      title: "Notes",
      image: "https://cdn-icons-png.flaticon.com/512/5402/5402751.png"),
  Content(
      title: "Assignment",
      image:
          "https://cdn-icons-png.freepik.com/256/8019/8019801.png?semt=ais_hybrid"),
  Content(
      title: "Exams",
      image: "https://cdn-icons-png.flaticon.com/512/9338/9338114.png"),
  Content(
      title: "Resources",
      image: "https://cdn-icons-png.flaticon.com/512/751/751432.png"),
  Content(
      title: "Exam Form",
      image: 'https://cdn-icons-png.flaticon.com/512/10159/10159810.png'),
  Content(
      title: "Complaints",
      image: "https://static.thenounproject.com/png/202590-200.png"),
  Content(
      title: "Apply Leave",
      image: "https://cdn-icons-png.flaticon.com/512/3387/3387188.png"),
       Content(
      title: "Fees",
      image: "https://cdn-icons-png.flaticon.com/512/6344/6344008.png"),
     
];

final List<int> openableIndexs = [0];
