import 'package:flutter/material.dart';

class OneRegister extends StatefulWidget {
  const OneRegister({Key? key}) : super(key: key);

  @override
  _OneRegisterState createState() => _OneRegisterState();
}

class _OneRegisterState extends State<OneRegister> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Expanded(
            flex: 10,
            child: Container(
                margin:
                    EdgeInsets.only(top: 35, left: 10, right: 10, bottom: 10),
                decoration: BoxDecoration(
                    color: Color(0xFFD99AFD),
                    borderRadius: BorderRadius.circular(20))),
          ),
          Divider(),
          Expanded(
              flex: 7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextRegisterSignin(),
                  Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                          color: Color(0xffE9ECF4),
                          borderRadius: BorderRadius.circular(18)),
                      height: 70,
                      child: RegisterLogin()),
                ],
              )),
          // BackdropFilter(
          //   filter: ImageFilter.blur(
          //     sigmaX: 200.0,
          //     sigmaY: 200.0,
          //   ),
          //   child: Container(),
          // )
        ],
      ),
    );
  }
}

class RegisterLogin extends StatefulWidget {
  const RegisterLogin({Key? key}) : super(key: key);

  @override
  _RegisterLoginState createState() => _RegisterLoginState();
}

class _RegisterLoginState extends State<RegisterLogin> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Text(
                  'Register',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/OneLogin");
              },
              child: Container(
                height: 200,
                // width: 200,
                decoration: BoxDecoration(
                    // color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    'Sign In',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TextRegisterSignin extends StatefulWidget {
  const TextRegisterSignin({Key? key}) : super(key: key);

  @override
  _TextRegisterSigninState createState() => _TextRegisterSigninState();
}

class _TextRegisterSigninState extends State<TextRegisterSignin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Discover your \n Dream Job Here',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Text(
              'Mussum Ipsum, cacilds vidis litro abertis. Paisis, filhis, espiritis santis.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
            ),
          ),
        ],
      ),
    );
  }
}
