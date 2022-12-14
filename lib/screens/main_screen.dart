import 'package:flutter/material.dart';

import '../config/palette.dart';

class LoginSignupScreen extends StatefulWidget {
  const LoginSignupScreen({Key? key}) : super(key: key);

  @override
  State<LoginSignupScreen> createState() => _LoginSignupScreenState();
}

class _LoginSignupScreenState extends State<LoginSignupScreen> {
  bool isSignupScreen = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: Stack(
        children: [
          // 포지션1;배경
          Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('image/red.jpeg'),
                    fit: BoxFit.fill
                  )
                ),
                child: Container(
                  padding: EdgeInsets.only(top: 90, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      RichText(
                        text: TextSpan(
                          text: 'Welcome',
                          style: TextStyle(
                            letterSpacing: 1.0,
                            fontSize: 25,
                            color: Colors.white
                          ),
                          children: [
                            TextSpan(
                              text: 'to Yummy chat!',
                              style: TextStyle(
                                  letterSpacing: 1.0,
                                  fontSize: 25,
                                  color: Colors.white,
                                fontWeight: FontWeight.bold
                              ),
                            )
                          ]
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text('Signup to continue',
                        style: TextStyle(
                            letterSpacing: 1.0,
                            fontSize: 25,
                            color: Colors.white,
                        ),
                      )
                    ]
                    ),
                  ),
                ),
              ),
          // 포지션2;텍스트폼필드
          Positioned(
            top: 180,
            child: Container(
              padding: EdgeInsets.all(20.0),
            height: 280.0,
            width: MediaQuery.of(context).size.width-40,  // ㅣ디바이스 실제 너비값
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 15,
                  spreadRadius: 5
                )
              ]
            ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            isSignupScreen = false;
                          });
                        },
                        child: Column(
                        children: [
                          Text(
                            'LOGIN',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: !isSignupScreen ? Palette.activeColor
                                    : Palette.textColor1
                            ),
                          ),
                          if(!isSignupScreen)
                          Container(
                            height: 2,
                            width: 55,
                            color: Colors.orange,
                          )
                        ],
                      ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSignupScreen = true;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              'SIGNUP',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: isSignupScreen ? Palette.activeColor
                                      : Palette.textColor1
                              ),
                            ),
                            if(isSignupScreen)
                            Container(
                              height: 2,
                              width: 55,
                              color: Colors.orange,
                              margin: EdgeInsets.only(top: 3),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Form(
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.account_circle,
                              color: Palette.iconColor,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Palette.textColor1
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(35.0))
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Palette.textColor1
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(35.0))
                              ),
                              hintText: 'User name',
                              hintStyle: TextStyle(
                                fontSize: 14,
                                color: Palette.textColor1
                              ),
                              contentPadding: EdgeInsets.all(10)
                            ),
                          ),
                          SizedBox(height: 8,),
                          TextFormField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.account_circle,
                                  color: Palette.iconColor,
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Palette.textColor1
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(35.0))
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Palette.textColor1
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(35.0))
                                ),
                                hintText: 'User name',
                                hintStyle: TextStyle(
                                    fontSize: 14,
                                    color: Palette.textColor1
                                ),
                                contentPadding: EdgeInsets.all(10)
                            ),
                          ),
                          SizedBox(height: 8,),
                          TextFormField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.account_circle,
                                  color: Palette.iconColor,
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Palette.textColor1
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(35.0))
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Palette.textColor1
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(35.0))
                                ),
                                hintText: 'User name',
                                hintStyle: TextStyle(
                                    fontSize: 14,
                                    color: Palette.textColor1
                                ),
                                contentPadding: EdgeInsets.all(10)
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
          ),

          ),
          // 포지션3; 전송버튼
          Positioned(
            top: 430,
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(15),
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child:Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.orange, Colors.red],
                        begin:Alignment.topLeft,
                        end: Alignment.bottomRight),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                         BoxShadow(
                           color: Colors.black.withOpacity(0.3),
                           spreadRadius: 1,
                           blurRadius: 1,
                           offset: Offset(0, 1),
                         ),
                        ],
                    ),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  )
                ),
              ),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height-125,  // 스크린의 세로 길이를 계산
              right: 0,
              left: 0,
              child: Column(
                children: [
                  Text('or Signup with'),
                  SizedBox(
                    height: 10,
                  ),
                  TextButton.icon(
                    onPressed: (){},
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      minimumSize: Size(155, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      backgroundColor: Palette.googleColor
                    ),
                    icon: Icon(Icons.add),
                    label: Text("Google"),
                  ),
                ],
              ),
          ),
        ],
      )
    );
  }
}
