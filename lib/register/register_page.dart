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
          onPressed: (){
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            size: 18,
            color: Colors.white,),
        ),
      ),
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildPageTitle(),
              const SizedBox(height: 53),
              _buildFormRegister(),
              _buildOrSplitDivider(),
              _buildSocialRegister(),
              _buildHaveAccount(context),
            ],
          ),
        ),
      ),
    );
  }
  Widget _buildPageTitle(){
    return  Container(
      margin: const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 40),
      child: Text(
        "Register",
        style: TextStyle(
          color: Colors.white.withOpacity(0.87),
          fontSize: 32,
          fontWeight: FontWeight.bold,
          fontFamily: "Lato",
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
  Widget _buildFormRegister(){
    return Form(
      child: Container(
        margin:const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildUsernameField(),
            // const SizedBox(height: 25,),
            _buildPasswordField(),
            _buildConfirmPasswordField(),
            _buildLoginButton(),

          ],
        ),
      ),
    );
  }

  Widget _buildUsernameField() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Username",
              style: TextStyle(
                color: Colors.white.withOpacity(0.87),
                fontSize: 16,
                fontFamily: "Lato",
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter your Username",
                  hintStyle: const TextStyle(
                    color: Color(0xFF535353),
                    fontSize: 16,
                    fontFamily: "Lato",
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  fillColor: const Color(0xFF1D1D1D),
                  filled: true,
                ),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: "Lato",
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
  Widget _buildPasswordField() {
    return Container(
      margin:const EdgeInsets.only(top: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Password",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.87),
                  fontSize: 16,
                  fontFamily: "Lato",
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 8),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "* * * * * * * * * * *",
                    hintStyle: const TextStyle(
                      color: Color(0xFF535353),
                      fontSize: 16,
                      fontFamily: "Lato",
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    fillColor: const Color(0xFF1D1D1D),
                    filled: true,
                  ),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: "Lato",
                  ),
                  obscureText: true,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
  Widget _buildConfirmPasswordField() {
    return Container(
      margin:const EdgeInsets.only(top: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Confirm Password",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.87),
                  fontSize: 16,
                  fontFamily: "Lato",
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 8),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "* * * * * * * * * * *",
                    hintStyle: const TextStyle(
                      color: Color(0xFF535353),
                      fontSize: 16,
                      fontFamily: "Lato",
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    fillColor: const Color(0xFF1D1D1D),
                    filled: true,
                  ),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: "Lato",
                  ),
                  obscureText: true,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
  Widget _buildLoginButton(){
    return Container(
      width: double.infinity,
      height: 48,
      margin: const EdgeInsets.only(top: 70),
      child: ElevatedButton(
        onPressed: null,
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF8875FF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            disabledBackgroundColor: const Color(0xFF8687E7).withOpacity(0.5)
        ),
        child:  const  Text(
          "Register",
          style:  TextStyle(
              fontSize: 16,
              fontFamily: "Lato",
              color: Colors.white
          ),
        ),
      ),
    );
  }
  Widget _buildOrSplitDivider() {
    return Container(
      margin: const EdgeInsets.only(top: 45 , bottom: 40),
      padding:const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 1,
              width: double.infinity,
              color: const Color(0xFF979797),
            ),
          ),
          const  Text(
            "or",
            style:  TextStyle(
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

  Widget _buildSocialRegister(){
    return Column(
      children: [
        _buildSocialGoogleLogin(),
        _buildSocialAppleLogin(),
      ],
    );
  }
  Widget _buildSocialGoogleLogin(){
    return Container(
      width: double.infinity,
      height: 48,
      margin: const EdgeInsets.symmetric(vertical: 28),
      padding:const EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
        onPressed: (){
          //TODO : xu ly sau
        },
        style: OutlinedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            side: const BorderSide(
              width: 1,
              color: Color(0xFF8875FF) ,
            )
        ),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/social_google_logo.png",
              // TODO chưa khắc phục được ảnh để tạm
              width: 24,
              height: 24,
              fit: BoxFit.contain,
            ),
            Container(
              margin: const EdgeInsets.only(left: 10),
              child: const Text(
                "Register with Google",
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
  Widget _buildSocialAppleLogin(){
    return Container(
      width: double.infinity,
      height: 48,
      padding:const EdgeInsets.symmetric(horizontal: 24),
      // margin: const EdgeInsets.only(bottom: 20),
      child: ElevatedButton(
        onPressed: (){
          //TODO : xu ly sau
        },
        style: OutlinedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            side: const BorderSide(
              width: 1,
              color: Color(0xFF8875FF) ,
            )
        ),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/social_apple_logo.png",
              // TODO chưa khắc phục được ảnh để tạm
              width: 24,
              height: 24,
              fit: BoxFit.contain,
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
  Widget _buildHaveAccount(BuildContext context){
    return Container(
      margin:const EdgeInsets.only(top: 46, bottom: 20),
      alignment: Alignment.center,
      child: RichText(
        text: TextSpan(text: "Already have an account? ",
          style:const TextStyle(
              fontSize: 12,
              fontFamily: "Lato",
              color: Color(0xFF979797)
          ),
          children: [
            TextSpan(text: "Login",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Lato",
                  color: Colors.white.withOpacity(0.87),
                ),
                recognizer: TapGestureRecognizer()..onTap = (){
                  Navigator.pop(context);
                }
            ),
          ],
        ),
      ),
    );
  }
}

