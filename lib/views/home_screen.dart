import 'package:flutter/material.dart';
import 'package:vacation_app/utilities/app_style.dart';
import 'package:vacation_app/utilities/recent_news.dart';
import 'package:vacation_app/utilities/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vacation_app/utilities/news_card.dart';
import 'package:vacation_app/utilities/prompt_text.dart';
import 'package:vacation_app/views/author_article.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().initState(context);

    return SafeArea(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                SizedBox(height: 56),
                //!(AppBar)
                //?left - Profile Image
                Container(
                  height: 51,
                  width: 51,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kBorderRadius),
                    color: kLightBlue,
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://cdn3d.iconscout.com/3d/premium/thumb/man-avatar-6299539-5187871.png',
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 16),

                //?right - Welcome
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Welcome Back!',
                      style: kPoppinsBold.copyWith(
                        fontSize: SizeConfig.blockSizeHorizontal! * 4,
                      ),
                    ),
                    Text(
                      'Monday, 31 October',
                      style: kPoppinsRegular.copyWith(
                        color: kGrey,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(height: 35),

          //!(TextField)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kBorderRadius),
                color: kWhite,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      style: kPoppinsRegular.copyWith(
                        color: Colors.blue,
                        fontSize: SizeConfig.blockSizeHorizontal! * 4,
                      ),
                      controller: TextEditingController(),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 13,
                        ),
                        hintText: 'Search for article',
                        border: kborder,
                        errorBorder: kborder,
                        focusedBorder: kborder,
                        focusedErrorBorder: kborder,
                        hintStyle: kPoppinsRegular.copyWith(
                          color: kLightGrey,
                          fontSize: SizeConfig.blockSizeHorizontal! * 3,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: kBlue,
                      borderRadius: BorderRadius.circular(kBorderRadius),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset('lib/assets/Group.svg'),
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 15),

          //!(Category Area)
          SizedBox(
            height: 20,
            child: ListView(
              padding: EdgeInsets.only(left: 30),
              scrollDirection: Axis.horizontal,
              children: [
                promptText(category: '#Health'),
                promptText(category: '#Music'),
                promptText(category: '#Technology'),
                promptText(category: '#Sports'),
                promptText(category: '#Entertainment'),
                promptText(category: '#Art'),
                promptText(category: '#Lifestyle'),
                promptText(category: '#Fashion'),
                promptText(category: '#Finance'),
              ],
            ),
          ),

          SizedBox(height: 30),

          //!News Cards
          SizedBox(
            height: 304,
            child: ListView(
              padding: const EdgeInsets.only(left: 30),
              scrollDirection: Axis.horizontal,
              children: [
                //?Maldives
                newsCard(
                  networkImage: NetworkImage(
                    'https://media.architecturaldigest.com/photos/6032b3c9a0b9bd2edd5510d1/4:3/w_3840,h_2880,c_limit/Hero_Soneva%20Jani%20Chapter%20Two%20by%20Aksham%20Abdul%20Ghadir.jpg',
                  ),
                  imageDesc:
                      'Feel the thrill on the only surf simulator in Maldives 2022',
                  assetImage: AssetImage(
                    'lib/assets/asian lady.png',
                  ),
                  Name: 'Sang Dong-Min',
                  Date: 'Sep 9, 2022',
                ),

                //?Hong Kong
                newsCard(
                  networkImage: NetworkImage(
                    'https://scwcontent.affino.com/AcuCustom/Sitename/DAM/013/Tall_Buildings_AdobeStock_183551820_SCW.jpg',
                  ),
                  imageDesc:
                      'Hong Kong wins over Wall Street CEOs after lifting strict ',
                  assetImage: AssetImage(
                    'lib/assets/blonde hair.png',
                  ),
                  Name: 'Pan Bong',
                  Date: 'Jan 3, 2022',
                ),
              ],
            ),
          ),

          SizedBox(height: 30),

          //!Short for you _area
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Short For You',
                  style: kPoppinsBold.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 3.8),
                ),
                Text(
                  'View All',
                  style: kPoppinsRegular.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 3,
                    color: kBlue,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 19),

          //!Trending_Card
          SizedBox(
            height: 88,
            child: ListView(
              padding: EdgeInsets.only(left: 30),
              scrollDirection: Axis.horizontal,
              children: [
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => authorArticle()),
                    ),
                  ),
                  child: recentNews(
                    imageUrl:
                        'https://homeiswhereyourbagis.com/wp-content/uploads/2019/06/lombok-mustsees-mawun-beach-drohne.jpg',
                    text1: 'Top Trending',
                    text2: 'Islands in 2022',
                  ),
                ),
                recentNews(
                  imageUrl:
                      'https://www.globaltimes.cn/Portals/0/attachment/2022/2022-05-10/aecc54fc-5a4d-4f14-acfb-57561d552796.jpeg',
                  text1: 'China',
                  text2: 'Trading',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
