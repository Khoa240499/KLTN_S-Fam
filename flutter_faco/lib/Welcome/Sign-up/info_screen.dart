import 'package:flutter/material.dart';
import 'package:flutter_faco/Welcome/Sign-up/create_pass.dart';
import 'package:flutter_faco/Welcome/Sign-up/dropdownlist.dart';

class SignUp_InfoScreen extends StatelessWidget {
  int _value = 1;
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
              padding: const EdgeInsets.fromLTRB(0,0,0,10),
              child: Text("Đăng ký", style: TextStyle(
                  fontWeight: FontWeight.bold, color: Color(0xff42a9f3), fontSize: 30
              ),),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,0,0,40),
              child: Text("Vui lòng nhập thông tin cá nhân của bạn tại ở đây", style: TextStyle(
                  color: Color(0xff8d8d92),fontSize: 17
              ),),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,0,0,20),
              child: TextField(
                style: TextStyle(fontSize: 18, color: Colors.black),
                decoration: InputDecoration(
                  labelText: "Tên tài khoản", labelStyle: TextStyle(
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
              child: TextField(
                style: TextStyle(fontSize: 18, color: Colors.black),
                decoration: InputDecoration(
                  labelText: "Họ và tên", labelStyle: TextStyle(
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
            Container(
              height: 50,
              color: Colors.white,
              child:DropDownList(),
            ),

           Padding(
              padding: const EdgeInsets.fromLTRB(0,0,0,40),
              child: SizedBox(
                width: double.infinity,
                height: 56,
                child: RaisedButton(
                  color: Color(0xff42a9f3),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16))),
                  onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUp_CreatePassScreen())),

                  child: Text("Tiếp tục", style: TextStyle(color: Colors.white, fontSize: 16),),

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
