import 'package:flutter/material.dart';
import 'package:vacation_app/utilities/app_style.dart';
import 'package:vacation_app/utilities/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vacation_app/utilities/prompt_text.dart';

class newsCard extends StatelessWidget {
  final networkImage;
  final String imageDesc;
  final assetImage;
  final String Name;
  final String Date;

  newsCard({
    required this.networkImage,
    required this.imageDesc,
    required this.assetImage,
    required this.Name,
    required this.Date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      padding: EdgeInsets.all(12),
      height: 304,
      width: 255,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kBorderRadius),
        color: kWhite,
        boxShadow: [
          BoxShadow(
            color: kDarkBlue.withOpacity(0.051),
            offset: const Offset(0, 3),
            blurRadius: 24,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        children: [
          //!Image_Location
          Container(
            height: 164,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kBorderRadius),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: networkImage,
              ),
            ),
          ),

          SizedBox(height: 18),

          //!Image_Desc
          Flexible(
            child: Column(
              children: [
                Text(
                  imageDesc,
                  style: kPoppinsMedium.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          ),

          SizedBox(height: 16),

          //!Bottom_half_of_card
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //?Profile_pic
              Row(
                children: [
                  CircleAvatar(
                    radius: 19,
                    backgroundColor: kLightBlue,
                    backgroundImage: assetImage,
                  ),

                  SizedBox(width: 12),

                  //?Name & Date
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Name,
                        style: kPoppinsMedium.copyWith(
                          fontSize: SizeConfig.blockSizeHorizontal! * 3,
                        ),
                      ),
                      Text(
                        Date,
                        style: kPoppinsRegular.copyWith(
                          color: kGrey,
                          fontSize: SizeConfig.blockSizeHorizontal! * 3,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              //?Share_Icon
              Container(
                height: 38,
                width: 38,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kBorderRadius),
                  color: kLightWhite,
                ),
                child: SvgPicture.asset('lib/assets/share.svg'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
