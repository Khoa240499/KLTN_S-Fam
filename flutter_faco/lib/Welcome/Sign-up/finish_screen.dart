import 'package:flutter/material.dart';
import 'package:flutter_faco/Welcome/Login/login_screen.dart';


class SignUp_FinishScreen extends StatelessWidget {
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
              child: Text("Tạo tài khoản thành công", style: TextStyle(
                  fontWeight: FontWeight.bold, color: Color(0xff42a9f3), fontSize: 30
              ),),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,0,0,155),
              child: Center(
                child: Text("Bắt đầu kết nối với gia đình của bạn nào",textAlign: TextAlign.center, style: TextStyle(
                    color: Color(0xff8d8d92), fontSize: 24
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,0,0,25),
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

          ],
        ),
      ),
    );
  }
  void onSignInClicked(){
  }
}