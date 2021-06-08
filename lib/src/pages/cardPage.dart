import 'package:bussiness_card_app/src/data/userData.dart';
import 'package:flutter/material.dart';

import 'package:bussiness_card_app/src/utils/constants.dart';
import 'package:bussiness_card_app/src/utils/textStyles.dart';

class CardPage extends StatelessWidget {
  const CardPage({
    Key key,
    this.photoLink = UserData.phone,
    this.name = UserData.name,
    this.job = UserData.job,
    this.mail = UserData.mail,
    this.address = UserData.address,
    this.phone = UserData.phone,
  }) : super(key: key);

  final String photoLink;
  final String photoFallbackLink = Constants.cardCircleAvatarFallbackPhotoLink;
  final String name;
  final String job;
  final String mail;
  final String address;
  final String phone;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text(
          'Your bussiness card',
        ),
      ),
      backgroundColor: Colors.blue.shade50,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: Constants.cardPaddingLarge,
            ),
            Center(
              child: Card(
                elevation: Constants.cardElevation,
                color: Colors.amber.shade50,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    Constants.cardBorderRadius,
                  ),
                ),
                child: Container(
                  width: Constants.cardContentContainerWidth,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: Constants.cardPaddingLarge,
                      ),
                      CircleAvatar(
                        radius: Constants.cardCircleAvatarRadius,
                        backgroundImage: AssetImage(
                          this.photoFallbackLink,
                        ),
                        foregroundImage: AssetImage(
                          this.photoLink,
                        ),
                      ),
                      SizedBox(
                        height: Constants.cardPaddingLarge,
                      ),
                      Text(
                        this.name,
                        style: TextStyles.cardTitleTextStyle,
                      ),
                      SizedBox(
                        height: Constants.cardPaddingMedium,
                      ),
                      Text(
                        this.job,
                        style: TextStyles.cardSubtitleTextStyle,
                      ),
                      SizedBox(
                        height: Constants.cardPaddingSmall,
                      ),
                      Divider(
                        thickness: Constants.cardDividerThickness,
                        indent: Constants.cardDividerIndent,
                        endIndent: Constants.cardDividerIndent,
                      ),
                      SizedBox(
                        height: Constants.cardPaddingSmall,
                      ),
                      _createSecondaryTexts(
                        Icons.mail_outline,
                        this.mail,
                      ),
                      SizedBox(
                        height: Constants.cardPaddingExtraSmall,
                      ),
                      _createSecondaryTexts(
                        Icons.location_on_outlined,
                        this.address,
                      ),
                      SizedBox(
                        height: Constants.cardPaddingExtraSmall,
                      ),
                      _createSecondaryTexts(
                        Icons.phone_android,
                        this.phone,
                      ),
                      SizedBox(
                        height: Constants.cardPaddingMedium,
                      ),
                      SizedBox(
                        width: Constants.cardButtonWidth,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: Constants.cardButtonElevation,
                            primary: Colors.indigo,
                          ),
                          onPressed: () {},
                          child: Text(
                            'Contact me!',
                            style: TextStyles.cardButtonText,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Constants.cardPaddingMedium,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _createSecondaryTexts(
    IconData icon,
    String info,
  ) {
    return Row(
      children: [
        SizedBox(
          width: Constants.cardSecondaryTextsStartPadding,
        ),
        Icon(
          icon,
          color: Colors.blue.shade700,
        ),
        SizedBox(
          width: Constants.cardSecondaryTextsMediumPadding,
        ),
        Text(
          info,
          style: TextStyles.cardSecondaryTextsTextStyle,
        ),
      ],
    );
  }
}
