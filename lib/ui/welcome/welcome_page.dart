import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

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
          icon: const Icon(Icons.arrow_back_ios_new_rounded,
          size: 18,
          color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          _buildTitleAndDesc(),
          const Spacer(),// tao ra 1 khoang trong day hai widget con lai xuong
          _buildButtonLogin(),
          _buildButtonRegister(),
        ],
      ),
    );
  }
  Widget _buildTitleAndDesc(){
    return Container(
      margin: const EdgeInsets.only(top: 58),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
             "Welcome to UpTodo",
              style: TextStyle(
                color: Colors.white.withOpacity(0.87),
                // fontFamily: "Lato",
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 26),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
             "Please login to your account or create new account to continue",
              style: TextStyle(
                color: Colors.white.withOpacity(0.67),
                fontFamily: "Lato",
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
  Widget _buildButtonLogin(){
    return Container(
      width: double.infinity,// khong gioi han ve width
      height:  48,
      padding:const EdgeInsets.symmetric(horizontal: 24),
      child: ElevatedButton(
        onPressed: () {

        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF8875FF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        child:  const Text(
          "LOGIN",
          style: TextStyle(
            fontSize: 16,
            fontFamily: "Lato",
            color: Colors.white,
          ),
        ),
      ),
    );
  }
  Widget _buildButtonRegister(){
    return Container(
      width: double.infinity,// khong gioi han ve width
      height:  48,
      padding:const EdgeInsets.symmetric(horizontal: 24),
      margin:const EdgeInsets.symmetric(vertical: 28),
      child: ElevatedButton(
        onPressed: () {
          // TODO
        },
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)
          ),
          side:const  BorderSide(
            width: 1,
            color: Color(0xFF8875FF)
          )// Border 4 goc
        ),
        child:  const Text(
          "CREATE ACCOUNT",
          style: TextStyle(
            fontSize: 16,
            fontFamily: "Lato",
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
