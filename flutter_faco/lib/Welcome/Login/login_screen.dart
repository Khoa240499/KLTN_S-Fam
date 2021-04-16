import 'package:flutter/material.dart';
import 'package:flutter_faco/Welcome/Login/lost-pass.dart';
import 'package:flutter_faco/Welcome/Sign-up/sign-up_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        padding: EdgeInsets.fromLTRB(30, 150, 30, 0),
        constraints: BoxConstraints.expand(),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.fromLTRB(0,0,0,40),
                child: FlatButton(
                    child:Container(
                      width:  110,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(Icons.arrow_back_ios,color: Color(0xff8d8d92),),
                          Text("Quay lại", style: TextStyle(
                              color: Color(0xff8d8d92),
                              fontSize: 18)
                            ,),
                          // onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyApp())),
                        ],
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }


                )
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,0,0,40),
              child: Text("Đăng nhập", style: TextStyle(
                  fontWeight: FontWeight.bold, color: Color(0xff42a9f3), fontSize: 30
              ),),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,0,0,40),
              child: TextField(
                style: TextStyle(fontSize: 18, color: Colors.black),
                decoration: InputDecoration(
                  labelText: "Email / Tên tài khoản", labelStyle: TextStyle(
                    color: Color(0xff888888),
                    fontSize: 15
                ),
                  enabledBorder: new OutlineInputBorder(
                      borderSide: new BorderSide(color: Color(0xffD4D7DB))),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff42a9f3)),
                  ),

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,0,0,40),
              child: Stack(
                alignment: AlignmentDirectional.centerEnd,
                children: <Widget>[
                  TextField(
                    style: TextStyle(fontSize: 18, color: Colors.black),
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Mật khẩu", labelStyle: TextStyle(
                        color: Color(0xff888888), fontSize: 15),
                      enabledBorder: new OutlineInputBorder(
                          borderSide: new BorderSide(color: Color(0xffD4D7DB))),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff42a9f3)),
                      ),
                    ),
                  ),
                  FlatButton(
                    child:
                    Icon(Icons.remove_red_eye_outlined),
                    onPressed: onSignInClicked,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,0,0,40),
              child: SizedBox(
                width: double.infinity,
                height: 56,
                child: RaisedButton(
                  color: Color(0xff42a9f3),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16))),
                  onPressed: onSignInClicked,
                  child: Text("Đăng nhập", style: TextStyle(color: Colors.white, fontSize: 16),),

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,0,0,20),
              child: Container(
                height: 360,
                width: double.infinity,
                child: Column(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[

                    FlatButton(
                      child:
                      Text("Quên mật khẩu ?",
                        style: TextStyle(color: Color(0xff42a9f3),fontSize: 15),
                      ),
                      onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LostPassScreen())),
                    ),
                    FlatButton(
                      child:
                      Text("Chưa có tài khoản ?",
                        style: TextStyle(color: Color(0xff42a9f3),fontSize: 15),
                      ),
                      onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUpScreen())),

                    ),
                  ],
                ),
              ),
            ),


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