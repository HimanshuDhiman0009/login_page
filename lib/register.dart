import 'package:flutter/material.dart';
import 'dry_data.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/register.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Stack(children: [
            Container(
              padding: EdgeInsets.only(top: 85, left: 30),
              child: Text('Create\n Account',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 33,
                      fontWeight: FontWeight.bold)),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.4,
                  right: 35,
                  left: 35),
              child: Column(
                children: [
                  InputArea(
                    hideLetter: false,
                    text: 'Name',
                    textColor: Colors.white,
                    borderColor: Colors.white,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InputArea(
                    hideLetter: false,
                    text: 'Email',
                    textColor: Colors.white,
                    borderColor: Colors.white,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InputArea(
                    hideLetter: true,
                    text: 'Password',
                    textColor: Colors.white,
                    borderColor: Colors.white,
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Color(0xFF3A434D),
                        child: IconButton(
                          color: Colors.white,
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/');
                          },
                          child: Container(
                              child: Text(
                            'Sign In',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 20,
                                color: Colors.white),
                          )),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
