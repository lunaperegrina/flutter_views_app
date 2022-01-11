import 'package:flutter/material.dart';
import 'dart:ui';

class OneLogin extends StatefulWidget {
  const OneLogin({Key? key}) : super(key: key);

  @override
  _OneLoginState createState() => _OneLoginState();
}

class _OneLoginState extends State<OneLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Stack(children: [
        FiltroImagem(),
        Column(
          children: [
            SizedBox(
              height: 80,
            ),
            HelloAgain(),
            LoginInput(),
            PasswordInput(),
            RecoveryPassword(),
            GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffD99AFD),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        blurRadius: 30,
                        color: Color(0xffE9C3FF),
                        offset: Offset(0, 6))
                  ],
                ),
                height: 60,
                width: 350,
                child: Center(
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            // ElevatedButton(
            //   onPressed: () {},
            //   child: Text('Sign In'),
            //   style: ButtonStyle(),
            // ),
            OrContinueWith(),
            Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: SocialLogin()),
            NotMemberRegisterNow(),
          ],
        ),
      ]),
    ));
  }
}

class HelloAgain extends StatefulWidget {
  const HelloAgain({Key? key}) : super(key: key);

  @override
  _HelloAgainState createState() => _HelloAgainState();
}

class _HelloAgainState extends State<HelloAgain> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          "Hello Again!",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
        ),
        Container(
          margin: EdgeInsets.only(top: 20, bottom: 20),
          child: Text(
            "Welcome back you've \n been missed!",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    ));
  }
}

class LoginInput extends StatefulWidget {
  const LoginInput({Key? key}) : super(key: key);

  @override
  _LoginInputState createState() => _LoginInputState();
}

class _LoginInputState extends State<LoginInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 30, right: 30),
            height: 65,
            decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: TextField(
                autocorrect: true,
                enableSuggestions: true,
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  hintText: 'Username',
                  border: InputBorder.none,
                  hoverColor: Colors.amber,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class RecoveryPassword extends StatefulWidget {
  const RecoveryPassword({Key? key}) : super(key: key);

  @override
  _RecoveryPasswordState createState() => _RecoveryPasswordState();
}

class _RecoveryPasswordState extends State<RecoveryPassword> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20, top: 20, bottom: 20),
      alignment: Alignment.centerRight,
      child: Text(
        'Recovery Password',
        style: TextStyle(fontSize: 15),
      ),
    );
  }
}

class OrContinueWith extends StatefulWidget {
  const OrContinueWith({Key? key}) : super(key: key);

  @override
  _OrContinueWithState createState() => _OrContinueWithState();
}

class _OrContinueWithState extends State<OrContinueWith> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50, bottom: 20),
      alignment: Alignment.center,
      child: Text(
        'Or continue with',
        style: TextStyle(fontSize: 15),
      ),
    );
  }
}

class NotMemberRegisterNow extends StatefulWidget {
  const NotMemberRegisterNow({Key? key}) : super(key: key);

  @override
  _NotMemberRegisterNowState createState() => _NotMemberRegisterNowState();
}

class _NotMemberRegisterNowState extends State<NotMemberRegisterNow> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        margin: EdgeInsets.only(top: 20, bottom: 20),
        alignment: Alignment.center,
        child: Text(
          'Not a member? Register now!',
          style: TextStyle(fontSize: 15),
        ),
      ),
    );
  }
}

class PasswordInput extends StatefulWidget {
  const PasswordInput({Key? key}) : super(key: key);

  @override
  _PasswordInputState createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  var icon_eye = Icons.remove_red_eye;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 20),
      padding: EdgeInsets.only(left: 30, right: 20),
      height: 65,
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
          child: Row(
        children: [
          Expanded(
            flex: 9,
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Password',
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: GestureDetector(
                  onTap: () {
                    setState(() {
                      icon_eye == Icons.remove_red_eye
                          ? icon_eye = Icons.remove_red_eye_outlined
                          : icon_eye = Icons.remove_red_eye;
                    });
                  },
                  child: Container(
                    child: Icon(
                      icon_eye,
                    ),
                  ))),
        ],
      )),
    );
  }
}

class SocialLogin extends StatefulWidget {
  const SocialLogin({Key? key}) : super(key: key);

  @override
  _SocialLoginState createState() => _SocialLoginState();
}

class _SocialLoginState extends State<SocialLogin> {
  var corPadraoSocial = Color(0xFFFFFFFF);
  var corPadraoSocialSombra = Color(0xFFEEEEEE);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            margin: EdgeInsets.all(10),
            height: 80,
            decoration: BoxDecoration(
              color: corPadraoSocial,
              borderRadius: BorderRadius.circular(10),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  blurRadius: 20,
                  color: corPadraoSocialSombra,
                  offset: Offset(0, 0),
                )
              ],
            ),
            child: Center(
              child: Container(
                height: 60,
                width: 60,
                child: Image.asset(
                  'images/logo-g.png',
                  width: 10,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            margin: EdgeInsets.all(10),
            height: 80,
            decoration: BoxDecoration(
              color: corPadraoSocial,
              borderRadius: BorderRadius.circular(10),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  blurRadius: 20,
                  color: corPadraoSocialSombra,
                  offset: Offset(0, 0),
                )
              ],
            ),
            child: Center(
              child: Container(
                height: 50,
                width: 50,
                child: Image.asset(
                  'images/logo-facebook.png',
                  width: 10,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            margin: EdgeInsets.all(10),
            height: 80,
            decoration: BoxDecoration(
              color: corPadraoSocial,
              borderRadius: BorderRadius.circular(10),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  blurRadius: 20,
                  color: corPadraoSocialSombra,
                  offset: Offset(0, 0),
                )
              ],
            ),
            child: Center(
              child: Container(
                height: 50,
                width: 50,
                child: Image.asset(
                  'images/logo-apple.png',
                  width: 10,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class FiltroImagem extends StatefulWidget {
  const FiltroImagem({Key? key}) : super(key: key);

  @override
  _FiltroImagemState createState() => _FiltroImagemState();
}

class _FiltroImagemState extends State<FiltroImagem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "images/gradiante-flutter.jpg",
          fit: BoxFit.contain,
        ),
        BackdropFilter(
          blendMode: BlendMode.lighten,
          filter: ImageFilter.blur(
            sigmaX: 10000.0,
            sigmaY: 10000.0,
          ),
          child: Container(),
        ),
        BackdropFilter(
          blendMode: BlendMode.lighten,
          filter: ImageFilter.blur(
            sigmaX: 10000.0,
            sigmaY: 10000.0,
          ),
          child: Container(),
        ),
        BackdropFilter(
          blendMode: BlendMode.lighten,
          filter: ImageFilter.blur(
            sigmaX: 10000.0,
            sigmaY: 10000.0,
          ),
          child: Container(),
        ),
        BackdropFilter(
          // blendMode: BlendMode.luminosity,
          filter: ImageFilter.blur(
            sigmaX: 10000.0,
            sigmaY: 10000.0,
          ),
          child: Container(),
        ),
      ],
    );
  }
}
