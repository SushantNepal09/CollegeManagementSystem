import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:student/allvariables/allVar.dart';
import 'package:student/main.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
        ),
        backgroundColor: primaryBlue,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.edit,color: Colors.white,))],
      ),
      body: Column(
        children: [
          Container(
            height: 230,
            color: primaryBlue,
            child: Column(
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 40,
                    child: ClipOval(
                      child: Image(
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                          image: AssetImage('assets/profilepic.png')),
                    ),
                  ),
                ),
                Text(
                  "Mr. Sushant Nepal",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  "Student",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w300),
                ),
                Text(
                  "Bsc.Csit 2079",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        //row to seperate email and phone

                        children: [
                          Icon(
                            Icons.email,
                            color: Colors.white,
                            size: 16,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "sushant.nepal@gmail.com",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.phone,
                            color: Colors.white,
                            size: 16,
                          ),
                          Text(
                            "+9779861110111",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
Padding(
  padding: const EdgeInsets.all(8.0),
  child: Container(
    decoration: BoxDecoration(
    // color: Colors.amber,
color: Color.fromARGB(255, 136, 136, 136),
  // color: Color(0xFFF9FAFB),
borderRadius: BorderRadius.circular(16),
boxShadow: [
BoxShadow(
color: Colors.black12,
offset: Offset(0, 4),
blurRadius: 8

)

]
    ),
    height: 60,
    
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
    Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
color: Colors.red,
borderRadius: BorderRadius.circular(40)
      ),
      child: Icon(Icons.school),
      
    ),
       Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
color: Colors.red,
borderRadius: BorderRadius.circular(40),

      ),
      child: Icon(Icons.book),
      
    ),
       Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
color: Colors.red,
borderRadius: BorderRadius.circular(40)
      ),
      child: Icon(Icons.grade),
      
    ),
       Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
color: Colors.red,
borderRadius: BorderRadius.circular(40)
      ),
    child: Icon(Icons.date_range),  
    )
  ],
  
  ),
  
  
  ),
),

          
          SizedBox(
            height: 20,
          ),
          Text(
            'Account Information',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
            child: ListTile(
              onTap: () {},
              // selected: true,
              hoverColor: !dark? const Color.fromARGB(255, 232, 214, 214):const Color.fromARGB(255, 76, 76, 76),
              leading: Icon(Icons.mail),
              title: Text(
                "Personal Information",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
              subtitle: Text("View and Edit Your Personal Details",
                  style: TextStyle(fontSize: 10)),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(top: 0, left: 10, right: 10),
            child: ListTile(
              onTap: () {},
              // selected: true,
              hoverColor: !dark? const Color.fromARGB(255, 238, 222, 222):const Color.fromARGB(255, 76, 76, 76),
              leading: Icon(Icons.book_outlined),
              title: Text(
                "Educational Information",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
              subtitle: Text("View and Edit Your Educational Information",
                  style: TextStyle(fontSize: 10)),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
          ),
             Divider(),
          Padding(
            padding: const EdgeInsets.only(top: 0, left: 10, right: 10),
            child: ListTile(
              onTap: () {},
              // selected: true,
              hoverColor: !dark? const Color.fromARGB(255, 238, 222, 222):const Color.fromARGB(255, 76, 76, 76),
              leading: Icon(Icons.attach_file_outlined),
              title: Text(
                "Documents",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
              subtitle: Text("View Your Idcard,Admit card and other Documents",
                  style: TextStyle(fontSize: 10)),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
          )
        ],
      ),
    ));
  }
}
