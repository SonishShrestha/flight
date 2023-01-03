import 'package:flutter/material.dart';

class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Register'),
          centerTitle: true,
          leading: BackButton(
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                'Create an Account',
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 23),
              ),
              SizedBox(height: 50),
              Container(
                width: 320,
                child: TextField(
                  decoration: InputDecoration(
                      label: Text(
                        'Full Name',
                        style: TextStyle(color: Colors.blue[400]),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.green)),
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
                        style: TextStyle(color: Colors.blue[400]),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.green)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.blue))),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 320,
                child: TextField(
                  decoration: InputDecoration(
                      label: Text(
                        'Password',
                        style: TextStyle(color: Colors.blue[400]),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.blue),
                      )),
                ),
              ),
              SizedBox(height: 25),

              Container(
                width: 250,
                child: Text(
                  'By creating an account you agree to our Terms of service and privacy policy',textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              SizedBox(height: 25),
              Container(
                  width: 320,
                  height: 60,
                  child:
                      ElevatedButton(onPressed: () {}, child: Text("REGISTER"))),
              SizedBox(
                height: 25,
              ),
              Text(
                "Already have an account ?click here,",
                style: TextStyle(color: Colors.blue),
              ),

            ],
          ),
        ),
      ),
    );
    ;
  }
}
