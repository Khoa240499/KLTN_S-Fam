import 'package:flutter/material.dart';
import 'package:flutter_faco/Welcome/Login/login_screen.dart';
import 'package:flutter_faco/Welcome/Sign-up/sign-up_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        constraints: BoxConstraints.expand(),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.fromLTRB(0,0,0,15),
              child: Text("Chào mừng đến với S-Fam", style: TextStyle(
                  fontWeight: FontWeight.bold, color: Color(0xff42a9f3), fontSize: 30
              ),),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,0,0,105),
              child: Center(
                child: Text("Nơi giúp bạn kết nối các thành viên trong gia đình",textAlign: TextAlign.center, style: TextStyle(
                    color: Color(0xff8d8d92), fontSize: 24
                ),),
              ),
            ),

            // Padding(
            //   padding: const EdgeInsets.fromLTRB(0,0,0,40),
            //   child: TextField(
            //     style: TextStyle(fontSize: 18, color: Colors.black),
            //     decoration: InputDecoration(
            //       labelText: "Email / Username", labelStyle: TextStyle(
            //         color: Color(0xff888888),
            //         fontSize: 15
            //     ),
            //       enabledBorder: new OutlineInputBorder(
            //           borderSide: new BorderSide(color: Color(0xffD4D7DB))),
            //       focusedBorder: OutlineInputBorder(
            //         borderSide: BorderSide(color: Color(0xff42a9f3)),
            //       ),
            //
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.fromLTRB(0,0,0,40),
            //   child: Stack(
            //     alignment: AlignmentDirectional.centerEnd,
            //     children: <Widget>[
            //       TextField(
            //         style: TextStyle(fontSize: 18, color: Colors.black),
            //         obscureText: true,
            //         decoration: InputDecoration(
            //           labelText: "Mật khẩu", labelStyle: TextStyle(
            //             color: Color(0xff888888), fontSize: 15),
            //           enabledBorder: new OutlineInputBorder(
            //               borderSide: new BorderSide(color: Color(0xffD4D7DB))),
            //           focusedBorder: OutlineInputBorder(
            //             borderSide: BorderSide(color: Color(0xff42a9f3)),
            //           ),
            //         ),
            //       ),
            //       FlatButton(
            //           child: Text(
            //             "SHOW",
            //             style: TextStyle(
            //                 color: Colors.blue ,
            //                 fontSize: 13,
            //                 fontWeight: FontWeight.bold),
            //           ),
            //           onPressed: () {
            //             Navigator.pop(context);
            //           }
            //       )
            //     ],
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,0,0,20),
              child: SizedBox(
                width: double.infinity,
                height: 56,
                child: FlatButton(
                  color: Color(0xff42a9f3),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16))),
                  onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginScreen())),
                  child: Text("Đăng nhập", style: TextStyle(color: Colors.white, fontSize: 16),),

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,0,0,40),
              child: SizedBox(
                width: double.infinity,
                height: 56,
                child: FlatButton(
                  // color: Color(0xffffffff),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                      side: BorderSide(color: Color(0xff42a9f3))
                  ),
                  onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUpScreen())),
                  child: Text("Đăng ký", style: TextStyle(color: Color(0xff42a9f3), fontSize: 16),),

                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.fromLTRB(0,0,0,20),
            //   child: Container(
            //     height: 60,
            //     width: double.infinity,
            //     child: Column(
            //
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       crossAxisAlignment: CrossAxisAlignment.center,
            //       children: <Widget>[
            //
            //         // FlatButton(
            //         //     child:
            //         //     Text("Quên mật khẩu ?",
            //         //       style: TextStyle(color: Color(0xff42a9f3),fontSize: 15),
            //         //     ),
            //         //   onPressed: onSignInClicked,
            //         // ),
            //         FlatButton(
            //           child:
            //           Text("Chưa có tài khoản ?",
            //             style: TextStyle(color: Color(0xff42a9f3),fontSize: 15),
            //           ),
            //           onPressed: onSignInClicked,
            //         ),
            //       ],
            //     ),
            //   ),
            // ),


            // Container(
            //   height: 130,
            //   width: double.infinity,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: <Widget>[
            //       Text("NEW USER? SIGN UP", style: TextStyle(
            //           color: Color(0xff888888),
            //           fontSize: 15)
            //         ,),
            //       Text("FORGOT PASSWORD?", style: TextStyle(
            //           color: Colors.blue,
            //           fontSize: 15)
            //         ,)
            //     ],
            //   ),
            //
            // )

          ],
        ),
      ),
    );
  }
  void onSignInClicked(){
  }
}