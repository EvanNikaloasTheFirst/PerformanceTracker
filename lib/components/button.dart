import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

final Function()? onTap;
   const MyButton( {super.key,required, required this.onTap});



// generate my sign in buttin
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.symmetric(horizontal: 25.0),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: Text(
            'Sign in',
            style: TextStyle(
                color: Colors.white, fontSize: 17,
                fontWeight: FontWeight.w700),
          ),
        ),
      
    );
  }
}
