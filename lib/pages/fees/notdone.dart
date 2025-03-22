import 'package:flutter/material.dart';
import 'package:student/allvariables/allVar.dart';

class Notdone extends StatefulWidget {
  const Notdone({super.key});

  @override
  State<Notdone> createState() => _PaydoneState();
}

class _PaydoneState extends State<Notdone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Payment Done'),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                //this is the container with the fee detail payment method and payment
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 247, 247, 247),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      width: 2,
                      color: Colors.grey,
                    )),
                width: double.infinity,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      // this is for arranging the icon and text
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.date_range_outlined,
                            color: const Color.fromARGB(255, 3, 71, 126),
                          ),
                        ),
                        Text(
                          "Fee Detail",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 8, 85, 149)),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.wallet,
                              color: const Color.fromARGB(255, 8, 85, 149)),
                        ),
                        Text(
                          "Payment Method",
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.wallet_giftcard_rounded,
                            color: const Color.fromARGB(255, 11, 80, 136),
                            size: 38,
                          ),
                        ),
                        Text(
                          "Payment",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 3, 52, 93)),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
           Image(image: AssetImage('assets/money.png'),height: 250,),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceA,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                  child: Image(image: AssetImage('assets/cross.png'),height: 50,),
                  ),
                  Text(
                    "UnSuccess Transaction",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        " Your Transcation was UnSuccessful \n \t\t\t\t\t\t\t\t\t\t\t  Please Try Again"),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Container(
                        decoration: BoxDecoration(
                            color: tertiaryBlue,
                            borderRadius: BorderRadius.circular(10)),
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Center(
                            child: Text(
                          "Try Again",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
