import 'package:flutter/material.dart';
import 'Booking_Info.dart';
import 'login.dart';
class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  void dataAlert() {
    showDialog(
        context: context,
        builder: (context) {
          return Container(
            child: AlertDialog(
              actions: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Upload your document',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.blue),
                        ),
                      ),
                      SizedBox(height: 25),
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              'Enter Document Name',
                              style: TextStyle(color: Colors.blue),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.blue))),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              'Select Document',
                              style: TextStyle(color: Colors.blue),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.blue))),
                      ),
                      SizedBox(height: 25),
                      Container(
                        width: 250,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Upload'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'PROFILE',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          leading: BackButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Booking()));
            },
          ),
        ),
        body: Container(
          padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/logo.jpg'),
                    radius: 30.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'John Doe',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      Text(
                        'San Francisco,CA',
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: ElevatedButton(
                      onPressed: () {
                        dataAlert();
                      },
                      child: Text('Add Document'),
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ))),
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                child: Row(
                  children: [
                    
                    GestureDetector(
                      onTap: (){

                      },
                      child: Container(
                        padding: EdgeInsets.all(30.0),
                        color: Color(0xff2699fb).withOpacity(0.1),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '14',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Issued Ticket',
                              style: TextStyle(color: Colors.blue, fontSize: 15),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                          width: 160,
                          padding: EdgeInsets.all(30.0),
                          color: Color(0xff2699fb).withOpacity(0.1),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '8',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Invoices',
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 15),
                              )
                            ],
                          )),
                    ),
                  ],
                ),
              ),


            ],
            
          ),
        ),
      ),
    );
  }
}
