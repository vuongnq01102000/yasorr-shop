import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:shop/resources/assets.gen.dart';
import 'package:shop/src/config/extension/extension_text.dart';

class ListItemHotTopic extends StatelessWidget {
  const ListItemHotTopic({
    required this.titleTopic,
    super.key,
  });
  final String titleTopic;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
          child: GestureDetector(
            onTap: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  titleTopic,
                  style: GetTextExtension.textTitleBold.copyWith(fontSize: 18),
                ),
                Row(
                  children: [
                    const Text('Xem thêm'),
                    const SizedBox(
                      width: 5,
                    ),
                    Assets.icons.anglesRightSolid.svg(
                      width: 14,
                      height: 14,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.3,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (ctx, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width * 0.45,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(0, 3)),
                      ]),
                  alignment: Alignment.center,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: DottedBorder(
                          borderType: BorderType.RRect,
                          radius: const Radius.circular(10),
                          padding: const EdgeInsets.all(6),
                          color: Colors.black,
                          strokeWidth: 1,
                          child: const Center(
                            child: Text('Image here'),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Item $index',
                        style: GetTextExtension.text16Bold,
                      ),
                      Text(
                        'Price: $index',
                        style: GetTextExtension.text16Regular,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
