import 'package:flutter/material.dart';
import 'dry_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/login.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(children: [
          Container(
            padding: EdgeInsets.only(top: 85, left: 30),
            child: Text('WELCOME\n BACK',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 33,
                    fontWeight: FontWeight.bold)),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.45,
                  right: 35,
                  left: 35),
              child: Column(
                children: [
                  InputArea(
                    textColor: Colors.grey.shade500,
                    borderColor: Colors.grey.shade700,
                    hideLetter: false,
                    text: 'E-Mail',
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InputArea(
                      textColor: Colors.grey.shade500,
                      borderColor: Colors.grey.shade700,
                      hideLetter: true,
                      text: 'Password'),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sign In',
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF3A434D)),
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
                            Navigator.pushNamed(context, '/first');
                          },
                          child: Container(
                              child: Text(
                            'Sign up',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 20,
                                color: Color(0xFF3A434D)),
                          )),
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forget Password',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Color(0xFF3A434D),
                                fontSize: 20),
                          ))
                    ],
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
