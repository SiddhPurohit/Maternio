import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomizedButton extends StatelessWidget {
  final String? buttonText;
  final Color? buttonColor;
  final VoidCallback? onPressed;
  final Color? textColor;
  const CustomizedButton({Key? key, this.buttonText, this.buttonColor, this.onPressed, this.textColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          height: 70,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: buttonColor,
            border: Border.all(color: Colors.black,width: 1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(buttonText!,style: GoogleFonts.akshar(color: textColor,fontWeight: FontWeight.w500,fontSize: 25),),
          ),
        ),
      ),
    );

  }
}
