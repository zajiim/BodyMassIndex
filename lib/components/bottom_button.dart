import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({Key? key, required this.buttonTitle, required this.onTap})
      : super(key: key);
  final VoidCallback onTap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kCalculateButtonColor,
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kCalculateButtonHeight,
        child: Center(
          child: Text(
            buttonTitle.toString(),
            style: kCalculateTextStyle,
          ),
        ),
        padding: const EdgeInsets.only(
          bottom: 18.0,
        ),
      ),
    );
  }
}
