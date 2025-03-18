import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:student/allvariables/allVar.dart';
import 'package:student/authentication/fingerprint.dart';
import 'package:student/pages/fees.dart';
import 'package:student/pages/notdone.dart';
import 'package:student/pages/paydone.dart';

class Paymentpage extends StatefulWidget {
  const Paymentpage({super.key});

  @override
  State<Paymentpage> createState() => _PaymentpageState();
}

List<String> Options = ['Credit Card', 'Esewa', 'Khalti', 'Bank'];

class _PaymentpageState extends State<Paymentpage> {
  late SharedPreferences prefs;

  @override
  void initState() {
    super.initState();
    _loadPrefs();
  }

  Future<void> _loadPrefs() async {
    prefs = await SharedPreferences.getInstance();
  }


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
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Fees()));
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
            Padding(
              padding:
                  const EdgeInsets.only(top: 28, bottom: 8, left: 8, right: 8),
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
Image(image: AssetImage('assets/card.png'),
                          height: 30,),

                        // Image.network(
                        //   'https://cdn-icons-png.flaticon.com/512/6963/6963703.png',
                        //   fit: BoxFit.cover,
                        //   height: 30,
                        // ),
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
                        Image.network(
                          'https://esewa.com.np/common/images/esewa-icon-large.png',
                          fit: BoxFit.cover,
                          height: 30,
                        ),
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
                        Image.network(
                          'https://static-00.iconduck.com/assets.00/khalti-icon-2048x1745-edzdd0df.png',
                          fit: BoxFit.cover,
                          height: 30,
                        ),
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
                        Image.network(
                          'https://cdn-icons-png.flaticon.com/512/8043/8043680.png',
                          fit: BoxFit.cover,
                          height: 30,
                        ),
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
            Padding(
              padding: const EdgeInsets.only(top: 70, left: 8, right: 8),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.15,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 223, 223, 223),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(width: 0.5, color: Colors.grey),
                  // color: Colors.red,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  'PayDate',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18),
                                ),
                                Text(
                                  '2022-05-06',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  'Total',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18),
                                ),
                                Text(
                                  'Rs.35,000',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () async {
                // setState(() {
                //   _BottomSheet(context);
                //   Navigator.push(context,
                //       MaterialPageRoute(builder: (context) => Paydone()));
                //   // isPaid = true;
                // });

                final isAuthenticated = await LocalAuthApi.authenticate();

                if (isAuthenticated) {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Paydone()));
                  isPaid = true;
                  prefs.setBool('isPaid', isPaid);
                   setState(() { });
                } else {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Notdone()));
                  isPaid = false;
                }
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  decoration: BoxDecoration(
                      color: tertiaryBlue,
                      borderRadius: BorderRadius.circular(10)),
                  height: 40,
                  width: 100,
                  child: Center(
                      child: Text(
                    "Pay Now",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Future _BottomSheet(BuildContext context) {
//   return showModalBottomSheet(
//     context: context,
//     builder: (context) => Container(
//       height: 150,
//     ),
//   );
// }
