import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'app_style.dart';
import 'size_config.dart';

class promptText extends StatelessWidget {
  final String category;
  promptText({required this.category});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 38),
      child: Text(
        category,
        style: kPoppinsMedium.copyWith(
          color: kGrey,
          fontSize: SizeConfig.blockSizeHorizontal! * 3,
        ),
      ),
    );
  }
}
