import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vacation_app/utilities/app_style.dart';
import 'package:vacation_app/utilities/size_config.dart';
import 'package:vacation_app/views/home_screen.dart';
import 'package:vacation_app/views/main_screen.dart';

class authorArticle extends StatelessWidget {
  const authorArticle({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().initState(context);
    return Scaffold(
      backgroundColor: kWhite,
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 50,
                child: Stack(
                  children: [
                    const FullScreenSlider(),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: kWhite,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(42),
                              topRight: Radius.circular(42)),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 60,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(kBorderRadius),
                                border: Border.all(color: kWhite),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: SvgPicture.asset(
                                  'lib/assets/back_arrow.svg',
                                ),
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(kBorderRadius),
                                border: Border.all(color: kWhite),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: SvgPicture.asset(
                                  'lib/assets/bookmark_white.svg',
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  'Unravel mysteries\nof the Maldives',
                  style: kPoppinsBold.copyWith(
                    color: kDarkBlue,
                    fontSize: SizeConfig.blockSizeHorizontal! * 7,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  height: 54,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kBorderRadius),
                    border: Border.all(color: kBorderColor),
                  ),
                  child: Row(children: [
                    CircleAvatar(
                      maxRadius: 15,
                      backgroundImage: AssetImage(
                        'lib/assets/blueprofile.png',
                      ),
                    ),
                    SizedBox(width: 13),
                    Text(
                      'Keanu Carpent',
                      style: kPoppinsRegular.copyWith(
                        color: kGrey,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3.2,
                      ),
                    ),
                    SizedBox(width: 2),
                    Text(
                      ' May 17',
                      style: kPoppinsRegular.copyWith(
                        color: kGrey,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3.2,
                      ),
                    ),
                    SizedBox(width: 6),
                    Container(
                      height: 4,
                      width: 4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: kGrey,
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      '8 min read',
                      style: kPoppinsRegular.copyWith(
                        color: kGrey,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3.2,
                      ),
                    )
                  ]),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 0, 24, 0),
                child: Text(
                  "Just say anything, George, say what ever's\n natural, the first thing that comes to your\nmind. Take that you mutated son-of-a-bitch.\nMy pine, why you. You space bastard, you\nkilled a pine. You do? Yeah, it's 8:00. Hey,\nMcfly, I thought I told you never\n\nJust say anything, George, say what ever's\n natural, the first thing that comes to your\nmind. Take that you mutated son-of-a-bitch.\nMy pine, why you. You space bastard, you\nkilled a pine. You do? Yeah, it's 8:00. Hey,\nMcfly, I thought I told you never\nJust say anything, George, say what ever's\n natural, the first thing that comes to your\nmind. Take that you mutated son-of-a-bitch.\nMy pine, why you. You space bastard, you\nkilled a pine. You do? Yeah, it's 8:00. Hey,\nMcfly, I thought I told you never\n\nJust say anything, George, say what ever's\n natural, the first thing that comes to your\nmind. Take that you mutated son-of-a-bitch.\nMy pine, why you. You space bastard, you\nkilled a pine. You do? Yeah, it's 8:00. Hey,\nMcfly, I thought I told you never\nJust say anything, George, say what ever's\n natural, the first thing that comes to your\nmind. Take that you mutated son-of-a-bitch.\nMy pine, why you. You space bastard, you\nkilled a pine. You do? Yeah, it's 8:00. Hey,\nMcfly, I thought I told you never.\n\nJust say anything, George, say what ever's\n natural, the first thing that comes to your\nmind. Take that you mutated son-of-a-bitch.\nMy pine, why you. You space bastard, you\nkilled a pine. You do? Yeah, it's 8:00. Hey,\nMcfly, I thought I told you never",
                  style: kPoppinsRegular.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 3.8,
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 5,
              )
            ]),
      ),
    );
  }
}

final List<String> imageList = [
  'https://images.unsplash.com/photo-1543731068-7e0f5beff43a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1674&q=80',
  'https://images.unsplash.com/photo-1514282401047-d79a71a590e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1065&q=80',
  'https://images.unsplash.com/photo-1586861635167-e5223aadc9fe?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=776&q=80',
];

class FullScreenSlider extends StatefulWidget {
  const FullScreenSlider({super.key});

  @override
  State<FullScreenSlider> createState() => _FullScreenSliderState();
}

class _FullScreenSliderState extends State<FullScreenSlider> {
  int _current = 1;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          carouselController: _controller,
          options: CarouselOptions(
            height: SizeConfig.blockSizeVertical! * 50,
            viewportFraction: 1,
            enlargeCenterPage: false,
            onPageChanged: ((index, reason) {
              setState(
                () {
                  _current = index;
                },
              );
            }),
            initialPage: _current,
          ),
          items: imageList
              .map(
                (item) => Center(
                  child: Image.network(
                    item,
                    fit: BoxFit.cover,
                    height: SizeConfig.blockSizeVertical! * 50,
                    width: double.infinity,
                  ),
                ),
              )
              .toList(),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(bottom: 52),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imageList
                  .asMap()
                  .entries
                  .map(
                    (entry) => GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 7),
                        child: SvgPicture.asset(
                          _current == entry.key
                              ? 'lib/assets/star.svg'
                              : 'lib/assets/white_circle.svg',
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        )
      ],
    );
  }
}
