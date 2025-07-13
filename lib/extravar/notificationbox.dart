import 'package:flutter/material.dart';
import 'package:student/allvariables/notificlist.dart';
bool change = true;

class Square extends StatefulWidget {
  final String child;

  const Square({super.key, required this.child});

  @override
  State<Square> createState() => _SquareState();
}

class _SquareState extends State<Square> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
      child: Container(
        height: 60,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.red,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                  child: Text(
                widget.child,
                style: TextStyle(fontSize: 30, color: Colors.white),
              )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Tooltip(
                    message: 
                    change?
                    'Mark as Read':"",
                    child: IconButton(
                        onPressed: () {
                          setState(() {
                            change = !change;
                          });
                        },
                        icon: change
                            ? Icon(Icons.check_box_outlined)
                            : Icon(Icons.check_box_rounded))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
