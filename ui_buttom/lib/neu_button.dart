
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class NeuButton extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final onTap;
  bool isButtonPressed;

  NeuButton({super.key, this.onTap, required this.isButtonPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height:160,
        width: 160,
        decoration:BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isButtonPressed ? Colors.grey.shade200 : Colors.grey.shade300,
          ),
          boxShadow: isButtonPressed 
          ? [
             // shadows no 
            ]
          : [
            //dark shadow bottom right
            BoxShadow(
              color: Colors.grey.shade500,
              offset: const Offset(6, 6),
              blurRadius: 15,
              spreadRadius: 1,
              ),
    
              //lighter shadow on top left
              const BoxShadow(
                color:Colors.white,
                offset: Offset(-6, -6),
                blurRadius: 15,
                spreadRadius: 1,
              )
          ]
           ),
        child: Icon(
          Icons.favorite,
          size:60,
          color: isButtonPressed ? Colors.red[200] : Colors.red[400],
        ),
      ),
    );
  }
}