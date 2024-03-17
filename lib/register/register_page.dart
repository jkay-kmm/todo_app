import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 18,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            // can trai
            children: [
              _buildPageTitle(),
              _buildFormLogin(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPageTitle() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 40),
      child: Text(
        "LOGIN",
        style: TextStyle(
          color: Colors.white.withOpacity(0.87),
          // fontFamily: "Lato",
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildFormLogin() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      child: Form(
        child: SafeArea(
          top: false,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildUsernameField(),
                const SizedBox(height: 53),
                _buildPasswordField(),
                _buildLoginButton(),
                _buildOrSplitDivider(),
                _buildSocialLogin(),
                _buildHaveNotAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildUsernameField() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Username",
          style: TextStyle(
            color: Colors.white.withOpacity(0.87),
            fontFamily: "Lato",
            fontSize: 16,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: TextFormField(
              decoration: InputDecoration(
                hintText: "Enter your Username",
                hintStyle: const TextStyle(
                  color: Color(0xFF535353),
                  fontFamily: "Lato",
                  fontSize: 16,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                fillColor: const Color(0xFF1D1D1D),
                filled: true,
              ),
              style: const TextStyle(
                color: Colors.white,
                fontFamily: "Lato",
                fontSize: 16,
              )),
        )
      ],
    );
  }

  Widget _buildPasswordField() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Password",
          style: TextStyle(
            color: Colors.white.withOpacity(0.87),
            // fontFamily: "Lato",
            fontSize: 16,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "*********",
              hintStyle: const TextStyle(
                color: Color(0xFF535353),
                fontFamily: "Lato",
                fontSize: 16,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              fillColor: const Color(0xFF1D1D1D),
              filled: true,
            ),
            style: const TextStyle(
              color: Colors.white,
              fontFamily: "Lato",
              fontSize: 16,
            ),
            obscureText: true, // an password
          ),
        )
      ],
    );
  }

  Widget _buildLoginButton() {
    return Container(
      width: double.infinity, // khong gioi han ve width
      height: 48,
      margin: const EdgeInsets.only(top: 70),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF8875FF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            disabledBackgroundColor: const Color(0xFF8687E7).withOpacity(0.5)),
        child: const Text(
          "Login",
          style: TextStyle(
            fontSize: 16,
            fontFamily: "Lato",
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _buildOrSplitDivider() {
    return Container(
      margin: const EdgeInsets.only(top: 29, bottom: 35),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            // day cho den khi het man hinh => hai day cho ra giuwa
            child: Container(
              height: 1,
              width: double.infinity,
              color: const Color(0xFF979797),
            ),
          ),
          const Text(
            "or",
            style: TextStyle(
              fontSize: 16,
              fontFamily: "Lato",
              color: Color(0xFF979797),
            ),
          ),
          Expanded(
            child: Container(
              height: 1,
              width: double.infinity,
              color: const Color(0xFF979797),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSocialLogin() {
    return Column(
      children: [
        _buildSocialGoogleLogin(),
        _buildSocialAppleLogin(),
      ],
    );
  }

  Widget _buildSocialGoogleLogin() {
    return Container(
      width: double.infinity, // khong gioi han ve width
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: ElevatedButton(
        onPressed: () {
          // TODO
        },
        style: OutlinedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            side: const BorderSide(
                width: 1, color: Color(0xFF8875FF)) // Border 4 goc
            ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/social_google_logo.png",
              width: 24,
              height: 24,
              fit: BoxFit.fill,
            ),
            Container(
              margin: const EdgeInsets.only(left: 10),
              child: const Text(
                "Login with Google",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "Lato",
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSocialAppleLogin() {
    return Container(
      width: double.infinity, // khong gioi han ve width
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ElevatedButton(
        onPressed: () {
          // TODO
        },
        style: OutlinedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            side: const BorderSide(
                width: 1, color: Color(0xFF8875FF)) // Border 4 goc
            ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/social_apple_logo.png",
              width: 24,
              height: 24,
              fit: BoxFit.fill,
            ),
            Container(
              margin: const EdgeInsets.only(left: 10),
              child: const Text(
                "Login with Apple",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "Lato",
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _buildHaveNotAccount(){
    return Container(
      margin: const EdgeInsets.only(top: 46, bottom: 20),
      alignment: Alignment.center,
      child: RichText(
          text: TextSpan(
            text: "Don’t have an account? ",
            style: const TextStyle(
              fontSize: 12,
              fontFamily: "Lato",
              color: Color(0xFF979797),
            ),
            children: [
              TextSpan(
                text:"Register",
               style:  TextStyle(
                  fontSize: 12,
                  fontFamily: "Lato",
                  color: Colors.white.withOpacity(0.87),
                ),
                recognizer: TapGestureRecognizer()..onTap = (){
                  print("Di den man hinh register");
                },
              ),
            ],
          )),
    );
  }
}
