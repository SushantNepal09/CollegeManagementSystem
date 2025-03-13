import 'package:flutter/material.dart';
import 'package:student/allvariables/allVar.dart';

class Paymentpage extends StatefulWidget {
  const Paymentpage({super.key});

  @override
  State<Paymentpage> createState() => _PaymentpageState();
}

List<String> Options = ['Credit Card', 'Esewa', 'Khalti', 'Bank'];

class _PaymentpageState extends State<Paymentpage> {
  String currentOption = Options[0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryBlue,
        title: Text(
          "Payment",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        //this is the main body container
        child: Column(
          //this is the main column
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
                          icon: Icon(
                            Icons.wallet,
                            color: const Color.fromARGB(255, 11, 80, 136),
                            size: 38,
                          ),
                        ),
                        Text(
                          "Payment Method",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 3, 52, 93)),
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
                            color: Colors.grey,
                          ),
                        ),
                        Text("Payment")
                      ],
                    ),
                  ],
                ),
              ),
            ),

            Text(
              "Payment Method",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),

// Padding(
//   padding: const EdgeInsets.all(18.0),
//   child: Container(
//     width: double.infinity,
// height: 60,
// decoration: BoxDecoration(
//   borderRadius: BorderRadius.circular(7),
//   border: Border.all(
//     width: 1,
//     color: Colors.grey,
//   )
// ),

//   ),
// ),
// Padding(
//   padding: const EdgeInsets.all(18.0),
//   child: Container(
//     width: double.infinity,
// height: 60,
// decoration: BoxDecoration(
//   borderRadius: BorderRadius.circular(7),
//   border: Border.all(
//     width: 1.00,
//     color: Colors.grey,
//   )
// ),

//   ),
// ),
// Padding(
//   padding: const EdgeInsets.all(18.0),
//   child: Container(
//     width: double.infinity,
// height: 60,
// decoration: BoxDecoration(
//   borderRadius: BorderRadius.circular(7),
//   border: Border.all(
//     width: 1,
//     color: Colors.grey,
//   )
// ),

//   ),
// )

            Padding(
               padding: const EdgeInsets.only(top: 28,bottom: 8,left: 8,right: 8),
              child: Container(
              
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(
                      width: 1.00,
                      color: Colors.grey,
                    )),
                child: RadioListTile(
                  
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("CreditCard"),
                        Image.network('https://cdn-icons-png.flaticon.com/512/6963/6963703.png',fit: BoxFit.cover,height: 30,),
                      ],
                    ),
                    value: Options[0],
                    groupValue: currentOption,
                    onChanged: (value) {
                      setState(() {
                        currentOption = value.toString();
                      });
                    }),


                    
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(
                      width: 1.00,
                      color: Colors.grey,
                    )),
                child: RadioListTile(
                    title: Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Esewa"),
                         Image.network('https://esewa.com.np/common/images/esewa-icon-large.png',fit: BoxFit.cover,height: 30,),
                      ],
                    ),
                    value: Options[1],
                    groupValue: currentOption,
                    onChanged: (value) {
                      setState(() {
                        currentOption = value.toString();
                      });
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(
                      width: 1.00,
                      color: Colors.grey,
                    )),
                child: RadioListTile(
                      title: Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Khalti"),
                         Image.network('https://static-00.iconduck.com/assets.00/khalti-icon-2048x1745-edzdd0df.png',fit: BoxFit.cover,height: 30,),
                      ],
                    ),
                    value: Options[2],
                    groupValue: currentOption,
                    onChanged: (value) {
                      setState(() {
                        currentOption = value.toString();
                      });
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(
                      width: 1.00,
                      color: Colors.grey,
                    )),
                child: RadioListTile(
                       title: Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Bank Transfer"),
                         Image.network('https://cdn-icons-png.flaticon.com/512/8043/8043680.png',fit: BoxFit.cover,height: 30,),
                      ],
                    ),
                    value: Options[3],
                    groupValue: currentOption,
                    onChanged: (value) {
                      setState(() {
                        currentOption = value.toString();
                      });
                    }),
              ),
            ),


Container(
  

)



          ],
        ),
      ),
    );
  }
}
