import 'package:flutter/material.dart';
import 'package:vacation_app/utilities/app_style.dart';
import 'package:vacation_app/utilities/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class recentNews extends StatelessWidget {
  final imageUrl;
  final String text1;
  final String text2;

  recentNews({
    required this.imageUrl,
    required this.text1,
    required this.text2,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      padding: EdgeInsets.all(9),
      height: 88,
      width: 208,
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.circular(kBorderRadius),
        boxShadow: [
          BoxShadow(
            color: kDarkBlue.withOpacity(0.051),
            offset: const Offset(0, 3),
            blurRadius: 24,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage('$imageUrl'),
                  ),
                ),
              ),
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              Positioned(
                top: 26.26,
                left: 26.26,
                child: Container(
                  child: SvgPicture.asset(
                    'lib/assets/play_button.svg',
                  ),
                ),
              )
            ],
          ),
          SizedBox(width: 12),
          Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text1,
                    style: kPoppinsMedium.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 3.2,
                    ),
                  ),
                  Text(
                    text2,
                    style: kPoppinsMedium.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 3.2,
                    ),
                  ),
                  SizedBox(height: 9),
                  Row(
                    children: [
                      SvgPicture.asset('lib/assets/eye_2.svg'),
                      SizedBox(width: 4.36),
                      Text(
                        '40,999',
                        style: kPoppinsRegular.copyWith(
                          fontSize: SizeConfig.blockSizeHorizontal! * 3,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
    ;
  }
}
