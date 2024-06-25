import 'package:cyneox_test/helpers/constants/constants.dart';
import 'package:cyneox_test/helpers/utils/font_util.dart';
import 'package:cyneox_test/models/sample_model.dart';
import 'package:cyneox_test/providers/home_page_provider.dart';
import 'package:cyneox_test/uis/widgets/base_button.dart';
import 'package:cyneox_test/uis/widgets/base_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomePageProvider>(
      builder: (context, provider, child) => Stack(
        children: [
          ListView(
            padding: EdgeInsets.zero,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Image.network(
                    'https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/video/cq8l59W/spinning-globe-planet-earth-as-a-red-glow-hologram-3d-computer-generated-seamless-loop-motion-background_stu3ekpm_thumbnail-1080_01.png',
                    height: MediaQuery.of(context).size.height * 0.4,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).padding.top + 20,
                      horizontal: MediaQuery.of(context).size.width * 0.1,
                    ),
                    child: BaseTextFormField(
                      controller: TextEditingController(),
                      backgroundColor: Colors.black38,
                      maxLines: 1,
                      hintText: 'Enter search keywords here',
                      hintTextStyle: TextStyle(
                        color: grey600Color,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 1,
                          color: whiteColor,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 1,
                          color: white38Color,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      prefixIcon: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.search,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width * 0.1,
                    bottom: -125,
                    child: Container(
                      height: 250,
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        color: grey850Color,
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            const Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  CloudWidget(
                                    assetPath: 'assets/amazon_logo.png',
                                    title: 'Amazon\nWeb',
                                  ),
                                  CloudWidget(
                                    assetPath: 'assets/alibaba_logo.png',
                                    title: 'Alibaba\nCloud',
                                  ),
                                  CloudWidget(
                                    assetPath: 'assets/google_logo.png',
                                    title: 'Google\nCloud',
                                  ),
                                  CloudWidget(
                                    assetPath: 'assets/heroku_logo.png',
                                    title: 'Heroku\nCloud',
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: grey600Color,
                              indent: 10,
                              endIndent: 10,
                            ),
                            Expanded(
                              child: provider.isLoading
                                  ? const Center(
                                      child: SizedBox(
                                        height: 30,
                                        width: 30,
                                        child: CircularProgressIndicator(),
                                      ),
                                    )
                                  : provider.sample.isNotEmpty
                                      ? Padding(
                                          padding: const EdgeInsets.all(15),
                                          child: AppTileWidget(
                                            appInfo: provider.sample.first,
                                          ),
                                        )
                                      : const Text('No app listed'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 160),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1,
                ),
                child: Row(
                  children: [
                    Text(
                      'Editor\'s Choice',
                      style: TextStyle(
                        fontSize: get2XLFontSize(context),
                        fontWeight: FontWeight.bold,
                        color: whiteColor,
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: whiteColor,
                    ),
                  ],
                ),
              ),
              Divider(
                color: primaryColor,
                indent: MediaQuery.of(context).size.width * 0.1,
                endIndent: MediaQuery.of(context).size.width * 0.1,
              ),
              const SizedBox(height: 20),
              provider.isLoading
                  ? const Center(
                      child: SizedBox(
                        height: 30,
                        width: 30,
                        child: CircularProgressIndicator(),
                      ),
                    )
                  : SizedBox(
                      height: 220,
                      child: ListView.separated(
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: 20),
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.1,
                        ),
                        scrollDirection: Axis.horizontal,
                        itemCount: provider.sample.length,
                        itemBuilder: (context, index) {
                          return EditorChoiceWidget(
                            appInfo: provider.sample[index],
                            index: index,
                            onPressed: () => provider.goToDetailPage(
                              appInfo: provider.sample[index],
                            ),
                          );
                        },
                      ),
                    ),
              const SizedBox(height: 100),
            ],
          ),
        ],
      ),
    );
  }
}

class EditorChoiceWidget extends StatelessWidget {
  const EditorChoiceWidget({
    super.key,
    required this.appInfo,
    required this.index,
    required this.onPressed,
  });

  final SampleModel appInfo;
  final int index;
  final VoidCallback onPressed;

  List<Color> getColorSet(int index) {
    final List<List<Color>> colorSets = [
      [cardGradient1i, cardGradient1ii], // First set of colors
      [cardGradient2i, cardGradient2ii], // Second set of colors
      [cardGradient3i, cardGradient3ii], // Third set of colors
    ];

    return colorSets[index % colorSets.length];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: 160,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: getColorSet(index),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              appInfo.appIconImage ?? '',
              height: 70,
              width: 70,
            ),
            Text(
              appInfo.title ?? '',
              style: TextStyle(
                fontSize: get2XLFontSize(context),
                fontWeight: FontWeight.bold,
                color: whiteColor,
              ),
            ),
            Text(
              '${appInfo.size}MB',
              style: TextStyle(
                fontSize: get2XLFontSize(context),
                color: whiteColor,
              ),
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: BaseButton(
                    onPressed: onPressed,
                    backgroundColor: whiteColor,
                    child: Text(
                      'Install',
                      style: TextStyle(
                        fontSize: getLargeFontSize(context),
                        color: blackColor,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class AppTileWidget extends StatelessWidget {
  const AppTileWidget({
    super.key,
    required this.appInfo,
  });

  final SampleModel appInfo;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(
          appInfo.appIconImage ?? '',
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          appInfo.title ?? '',
                          style: TextStyle(
                            fontSize: getXLFontSize(context),
                            fontWeight: FontWeight.bold,
                            color: whiteColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: RatingBar(
                          ignoreGestures: true,
                          initialRating: appInfo.rating?.toDouble() ?? 0.0,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 12,
                          ratingWidget: RatingWidget(
                            full: const Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            half: const Icon(
                              Icons.star_half,
                              color: Colors.yellow,
                            ),
                            empty: const Icon(
                              Icons.star_border,
                              color: Colors.yellow,
                            ),
                          ),
                          itemPadding:
                              const EdgeInsets.symmetric(horizontal: 4.0),
                          onRatingUpdate: (rating) {},
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  BaseButton(
                    onPressed: () {},
                    child: const Text(
                      'Install',
                      style: TextStyle(color: whiteColor),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  appInfo.subtitle ?? '',
                  style: TextStyle(
                    fontSize: getRegularFontSize(context),
                    color: greyColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CloudWidget extends StatelessWidget {
  const CloudWidget({
    super.key,
    required this.assetPath,
    required this.title,
  });

  final String assetPath;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          assetPath,
          height: 40,
          width: 40,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: getSmallFontSize(context),
            color: whiteColor,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
