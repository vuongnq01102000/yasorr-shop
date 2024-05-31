import 'package:flutter/material.dart';
import 'package:shop/resources/assets.gen.dart';
import 'package:shop/src/config/extension/extension_text.dart';
import 'package:shop/src/screen/home/widget/carousel_hot_banner.dart';
import 'package:shop/src/screen/home/widget/list_item_hot_topic.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Yasorr',
                    style: GetTextExtension.textTitleBold.copyWith(
                        fontSize: 24,
                        fontFamily: 'San Francisco',
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Assets.icons.circleUserSolid.svg(
                      width: 24,
                      height: 24,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const CarouselHotBanner(),
            const SizedBox(
              height: 20,
            ),
            const ListItemHotTopic(
              titleTopic: 'Top rated',
            ),
            const SizedBox(
              height: 20,
            ),
            const ListItemHotTopic(
              titleTopic: 'T shirt',
            ),
          ],
        ),
      ),
    );
  }
}
