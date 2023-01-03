import 'package:flight/login.dart';
import 'package:flutter/material.dart';
import 'profile.dart';

class Booking extends StatefulWidget {
  const Booking({Key? key}) : super(key: key);

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  void showDataAlert() {
    showDialog(
        context: context,
        builder: (context) {
          return Container(
              child: AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            actions: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 60),
                child: Column(
                  children: [
                    Icon(
                      Icons.check_outlined,
                      size: 150,
                      color: Colors.blue,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => profile()));
                      },
                      child: Text(
                        'Ticket Booked Successfully',
                        style: TextStyle(color: Colors.blue),
                      ),
                    )
                  ],
                ),
              )
            ],
          ));
        });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'BOOKING INFORMATION',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          centerTitle: true,
          leading: BackButton(onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Login()));
          }),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                height: 140,
                color: Color(0xff2699fb).withOpacity(0.1),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Yeti Airlines (ATRT2)',
                            style: TextStyle(color: Colors.blue),
                          ),
                          Text(
                            'RS 4200 ',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            '06:55',
                            style: TextStyle(color: Colors.blue),
                          ),
                          Icon(
                            Icons.airplanemode_on_rounded,
                            color: Colors.blue,
                          ),
                          Text(
                            '07:20',
                            style: TextStyle(color: Colors.blue),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            '25min',
                            style: TextStyle(color: Colors.blue),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Class E1',
                            style: TextStyle(color: Colors.blue),
                          )
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Luggage 20kg',
                            style: TextStyle(color: Colors.blue),
                          ),
                          Text(
                            'Non-refundable',
                            style: TextStyle(color: Colors.blue),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                'Fill the information and proceed',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 23.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: 320,
                child: TextField(
                  decoration: InputDecoration(
                      label: Text(
                        'Full Name',
                        style: TextStyle(color: Colors.blue[200]),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.blue))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 320,
                child: TextField(
                  decoration: InputDecoration(
                      label: Text(
                        'Email',
                        style: TextStyle(color: Colors.blue[200]),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.blue))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 320,
                child: TextField(
                  decoration: InputDecoration(
                      label: Text(
                        'Password',
                        style: TextStyle(color: Colors.blue[200]),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.blue))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('All the information are correct',
                  style: TextStyle(color: Colors.blue)),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 320,
                height: 60,
                child: ElevatedButton(
                  child: Text('Book Ticket'),
                  onPressed: () {
                    showDataAlert();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
