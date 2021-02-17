import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                child: Stack(
                  alignment: Alignment(0.0,1.0),
                  children: [
                    Container(
                      child: Image(image: AssetImage('images/yoga.jpg') ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 22.0,bottom: 10.0 ),
                      child: Text("Sport Activity Platform",
                            style: TextStyle(
                              fontSize: 38.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.2,
                              color: Color(0xFF152942)
                            ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 10.0,left: 30.0,right: 30.0),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'User Name',
                        labelStyle:  TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide:  BorderSide(
                            color: Color(0xFF4073AE),
                          )
                        )
                      ),
                    ),
                    TextField(obscureText: true,
                      decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle:  TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide:  BorderSide(
                                color: Color(0xFF4073AE),
                              )
                          )
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 35.0),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 80.0,left: 20.0),
                    child: Container(
                      child: Text("Sign-in",style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF1E354E),
                        fontSize: 30.0
                      ),
                      ),
                    ),
                  ),
                  SizedBox(width: 50.0),
                  Padding(
                    padding: const EdgeInsets.only(top: 35.0,right: 10.0,left: 50.0),
                    child: FloatingActionButton(
                      backgroundColor: Color(0xFF4073AE),
                      child: Icon(Icons.arrow_forward_ios),
                      onPressed: (){},
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 50.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: InkWell(
                        child: Text('Create Account',
                          style: TextStyle(color: Color(0xFF4073AE),
                          fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: InkWell(
                        child: Text('Create Account',
                          style: TextStyle(color: Color(0xFF4073AE),
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

