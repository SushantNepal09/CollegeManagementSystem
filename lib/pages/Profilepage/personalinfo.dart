import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:student/allvariables/allVar.dart';

class Personalinfo extends StatefulWidget {
  const Personalinfo({super.key});

  @override
  State<Personalinfo> createState() => _PersonalinfoState();
}

class _PersonalinfoState extends State<Personalinfo> {
  File ? _image;
  pickimage() async {
    final picker = ImagePicker();

    final PickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (PickedFile != null) {
      _image = File(PickedFile.path);
      setState(() {
        
      });
    }

      // _picker.pickImage(source: ImageSource.camera);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: primaryBlue,
          title: Text(
            'Hello',
            style: TextStyle(color: Colors.white),
          ),
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
                          ]
,
  gradient: LinearGradient(
      colors: [Color(0xFF4FACFE), Color(0xFF00F2FE)],
    ),                          
                          
                          ),


                      child: CircleAvatar(
                        radius: 40,
                        child: ClipOval(
                          child: _image == null
                              ? Image.asset('assets/profilepic.png')
                              : Image.file(_image!,width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height*0.5,fit: BoxFit.cover,),
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
                              color: Colors.white,
                            )
                            // child: IconButton(onPressed: () {}, icon:Icon(Icons.camera_alt_sharp,size: 20,color: Colors.white,)),
                            ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
