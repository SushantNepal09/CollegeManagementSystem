//REMANING = EDITABLE LIST USING TEXT EDITING CONTROLLER


import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:student/allvariables/allVar.dart';
import 'package:student/pages/Profilepage/profinfoeditcontainer.dart';

class Personalinfo extends StatefulWidget {
  const Personalinfo({super.key});

  @override
  State<Personalinfo> createState() => _PersonalinfoState();
}

class _PersonalinfoState extends State<Personalinfo> {
 

  File? _image;
  pickimage() async {
    final picker = ImagePicker();

    final PickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (PickedFile != null) {
      _image = File(PickedFile.path);
      setState(() {});
    }

    // _picker.pickImage(source: ImageSource.camera);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: primaryBlue,
          title: Center(
            child: Text(
              'Personal Information',
              style: TextStyle(color: Colors.white),
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.edit,
                  color: Colors.white,
                ))
          ],
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(width: 1.5, color: Colors.blue),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 6,
                            offset: Offset(0, 4),
                          )
                        ],
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255, 79, 168, 246),
                            Color.fromARGB(255, 5, 223, 235)
                          ],
                        ),
                      ),
                      child: CircleAvatar(
                        radius: 40,
                        child: ClipOval(
                          child: _image == null
                              ? Image.asset('assets/profilepic.png')
                              : Image.file(
                                  _image!,
                                  width: MediaQuery.of(context).size.width,
                                  height:
                                      MediaQuery.of(context).size.height * 0.5,
                                  fit: BoxFit.cover,
                                ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: GestureDetector(
                        onTap: () {
                          pickimage();
                        },
                        child: Container(
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 2),
                            ),
                            child: Icon(
                              Icons.camera_alt_sharp,
                              size: 20,
                              color: const Color.fromARGB(255, 255, 254, 254),
                            )
                            // child: IconButton(onPressed: () {}, icon:Icon(Icons.camera_alt_sharp,size: 20,color: Colors.white,)),
                            ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ListTiles1(title1: 'Firstname', subtitle: 'Sushant',icon11: Icon(Icons.person,color: Colors.black,),),
              SizedBox(
                height: 20,
              ),
              ListTiles1(
                title1: 'Lastname',
                subtitle: 'Nepal',
                icon11: Icon(Icons.person_4_outlined,color: Colors.black,),
              ),
              SizedBox(
                height: 20,
              ),
              ListTiles1(
                title1: 'Email',
                subtitle: 'sushant@gmail.com',
                icon11: Icon(Icons.email,color: Colors.black,),
              ), //this is the list tile used to display and edit the names
              SizedBox(
                height: 20,
              ),
              ListTiles1(
                title1: 'Phoneno',
                subtitle: '9800000000',
                icon11: Icon(Icons.phone,color: Colors.black,),
              ),
              SizedBox(
                height: 20,
              ),
              ListTiles1(
                title1: 'Address',
                subtitle: 'Dharan-14,Sunsari',
                icon11: Icon(Icons.home,color: Colors.black,),
              ),
              SizedBox(
                height: 20,
              ),
              ListTiles1(
                title1: 'DateofBirth',
                subtitle: '2048-08-03',
                icon11: Icon(Icons.calendar_month,color: Colors.black,),
              ),
            ],
          ),
        ));
  }
}
