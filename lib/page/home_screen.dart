import 'package:flutter/material.dart';
import 'package:tictactoc_app/component/button_commponent.dart';
import 'package:tictactoc_app/page/Pick_side.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset('assets/logo.png'),
          ),
          const Text(
            'Choose your play mode',
            style: TextStyle(fontSize: 26),
          ),
          const SizedBox(
            height: 42,
          ),
          ButtonCommponent(
            text: 'With Ai',
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PickSide(isAi: true),
                  ));
            },
            buttonColor: Colors.blue,
            colorText: Colors.white,
          ),
          const SizedBox(
            height: 42,
          ),
          ButtonCommponent(
            text: 'With a frind',
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PickSide(isAi: false),
                  ));
            },
          )
        ],
      ),
    );
  }
}