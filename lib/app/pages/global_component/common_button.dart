import 'package:flutter/material.dart';


class CommonButton extends StatelessWidget {
   CommonButton({
    super.key,
     required this.text,
     required this.onPressed,
     this.width,
     this.height,
     this.style,
     this.borderRadius
   });

    String text;
    double? width;
    double? height;
    VoidCallback? onPressed;
    TextStyle? style;
    double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed ?? null,
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          fixedSize: Size(width ?? double.maxFinite, height ?? 0),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 16)
          ),
          disabledBackgroundColor: const Color(0xFFBABABA)
        ),
        child: Text(
          text,
          style: style ?? tsBodyMedium.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        )

    );
  }
}

