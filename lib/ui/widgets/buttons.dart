import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomFiledButton extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  const CustomFiledButton({
    super.key,
    required this.title,
    this.width = double.infinity,
    this.height = 50,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: purpleColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(56),
          ),
        ),
        onPressed: () {
          onPressed?.call();
        },
        child: Center(
          child: Text(
            title,
            style: whiteTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  const CustomTextButton({
    super.key,
    required this.title,
    this.width = double.infinity,
    this.height = 50,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        onPressed: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => const SignInPage(),
          //   ),
          // );
          onPressed?.call();
        },
        child: Center(
          child: Text(
            title,
            style: greyTextStyle.copyWith(
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
