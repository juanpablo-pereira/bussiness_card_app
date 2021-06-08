import 'package:flutter/material.dart';

import 'package:bussiness_card_app/src/utils/constants.dart';

abstract class TextStyles {
  static final TextStyle cardTitleTextStyle = TextStyle(
    fontSize: Constants.cardTitleFontSize,
    letterSpacing: -0.5,
    wordSpacing: -2,
    fontWeight: FontWeight.w500,
    color: Colors.indigo.shade800,
  );
  static final TextStyle cardSubtitleTextStyle = TextStyle(
    fontSize: Constants.cardSubitleFontSize,
    fontWeight: FontWeight.w400,
    color: Colors.indigo.shade700,
  );
  static final TextStyle cardSecondaryTextsTextStyle = TextStyle(
    fontSize: Constants.cardSecondaryTextsFontSize,
    fontWeight: FontWeight.w400,
    color: Colors.blue.shade700,
  );
  static final TextStyle cardButtonText = TextStyle(
    fontSize: Constants.cardButtonFontSize,
  );
}
