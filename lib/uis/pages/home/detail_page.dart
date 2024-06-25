import 'package:cyneox_test/helpers/constants/constants.dart';
import 'package:cyneox_test/helpers/utils/font_util.dart';
import 'package:cyneox_test/models/sample_model.dart';
import 'package:cyneox_test/providers/detail_page_provider.dart';
import 'package:cyneox_test/uis/widgets/base_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    super.key,
    required this.appInfo,
  });

  final SampleModel appInfo;

  @override
  Widget build(BuildContext context) {
    return Consumer<DetailPageProvider>(
      builder: (context, provider, child) => Scaffold(
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(
                MediaQuery.of(context).size.width * 0.075,
                MediaQuery.of(context).size.height * 0.15,
                MediaQuery.of(context).size.width * 0.075,
                10,
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/video/cq8l59W/spinning-globe-planet-earth-as-a-red-glow-hologram-3d-computer-generated-seamless-loop-motion-background_stu3ekpm_thumbnail-1080_01.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.7,
                        width: MediaQuery.of(context).size.width * 0.85,
                        decoration: BoxDecoration(
                          color: grey850Color,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: 90),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: IntrinsicHeight(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    AppRating(appInfo: appInfo),
                                    VerticalDivider(
                                      color: grey600Color,
                                      indent: 10,
                                      endIndent: 10,
                                    ),
                                    AppAgeSuitable(appInfo: appInfo),
                                    VerticalDivider(
                                      color: grey600Color,
                                      indent: 10,
                                      endIndent: 10,
                                    ),
                                    AppCategory(appInfo: appInfo),
                                    VerticalDivider(
                                      color: grey600Color,
                                      indent: 10,
                                      endIndent: 10,
                                    ),
                                    AppDeveloper(appInfo: appInfo),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Divider(
                              color: grey600Color,
                              indent: 15,
                              endIndent: 15,
                            ),
                            const SizedBox(height: 10),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Text(
                                appInfo.description ?? '',
                                style: const TextStyle(color: greyColor),
                              ),
                            ),
                            const SizedBox(height: 20),
                            if (appInfo.images?.isNotEmpty ?? false)
                              SizedBox(
                                height: 200,
                                child: ListView.separated(
                                  padding: const EdgeInsets.only(left: 15),
                                  scrollDirection: Axis.horizontal,
                                  separatorBuilder: (context, index) =>
                                      const SizedBox(width: 10),
                                  itemCount: appInfo.images?.length ?? 0,
                                  itemBuilder: (context, index) {
                                    return Image.network(
                                      appInfo.images![index],
                                      height: 200,
                                      width: 120,
                                      fit: BoxFit.cover,
                                    );
                                  },
                                ),
                              ),
                            const Spacer(),
                            Row(
                              children: [
                                const SizedBox(width: 15),
                                Expanded(
                                  child: SizedBox(
                                    height: 50,
                                    child: BaseButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Install Now',
                                        style: TextStyle(
                                          color: whiteColor,
                                          fontSize: get2XLFontSize(context),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 15),
                              ],
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: -30,
                      left: 0,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Row(
                          children: [
                            const SizedBox(width: 20),
                            Image.network(
                              appInfo.appIconImage ?? '',
                              height: 100,
                              width: 100,
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 30),
                                  Text(
                                    appInfo.title ?? '',
                                    style: TextStyle(
                                      fontSize: getSubHeaderFontSize(context),
                                      fontWeight: FontWeight.bold,
                                      color: whiteColor,
                                    ),
                                  ),
                                  Text(
                                    appInfo.subtitle ?? '',
                                    style: TextStyle(
                                      fontSize: getLargeFontSize(context),
                                      color: greyColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 20),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).padding.top,
              left: MediaQuery.of(context).size.width * 0.075,
              child: Row(
                children: [
                  IconButton(
                    icon: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 2, color: whiteColor),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(5),
                        child: Center(
                          child: Icon(
                            Icons.arrow_back,
                            color: whiteColor,
                          ),
                        ),
                      ),
                    ),
                    onPressed: provider.pop,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AppDeveloper extends StatelessWidget {
  const AppDeveloper({
    super.key,
    required this.appInfo,
  });

  final SampleModel appInfo;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'DEVELOPER',
            style: TextStyle(
              fontSize: getXSmallFontSize(context),
              color: grey600Color,
            ),
          ),
          const Expanded(
            child: Center(
              child: Icon(
                Icons.account_circle_outlined,
                color: greyColor,
              ),
            ),
          ),
          Text(
            appInfo.developer ?? '',
            style: TextStyle(
              fontSize: get2XSmallFontSize(context),
              color: greyColor,
            ),
          ),
        ],
      ),
    );
  }
}

class AppCategory extends StatelessWidget {
  const AppCategory({
    super.key,
    required this.appInfo,
  });

  final SampleModel appInfo;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'CATEGORY',
            style: TextStyle(
              fontSize: getXSmallFontSize(context),
              color: grey600Color,
            ),
          ),
          const Expanded(
            child: Center(
              child: Icon(
                Icons.category,
                color: greyColor,
              ),
            ),
          ),
          Text(
            appInfo.category ?? '',
            style: TextStyle(
              fontSize: get2XSmallFontSize(context),
              color: greyColor,
            ),
          ),
        ],
      ),
    );
  }
}

class AppAgeSuitable extends StatelessWidget {
  const AppAgeSuitable({
    super.key,
    required this.appInfo,
  });

  final SampleModel appInfo;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'AGE',
            style: TextStyle(
              fontSize: getXSmallFontSize(context),
              color: grey600Color,
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                '${appInfo.suitableAge}+',
                style: TextStyle(
                  fontSize: get2XLFontSize(context),
                  color: greyColor,
                ),
              ),
            ),
          ),
          Text(
            'Years Old',
            style: TextStyle(
              fontSize: get2XSmallFontSize(context),
              color: greyColor,
            ),
          ),
        ],
      ),
    );
  }
}

class AppRating extends StatelessWidget {
  const AppRating({
    super.key,
    required this.appInfo,
  });

  final SampleModel appInfo;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '380 RATINGS',
            style: TextStyle(
              fontSize: getXSmallFontSize(context),
              color: grey600Color,
            ),
          ),
          const SizedBox(height: 5),
          Expanded(
            child: Center(
              child: Text(
                '${appInfo.rating?.toDouble()}',
                style: TextStyle(
                  fontSize: get2XLFontSize(context),
                  color: greyColor,
                ),
              ),
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: RatingBar(
              ignoreGestures: true,
              initialRating: appInfo.rating?.toDouble() ?? 0.0,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 5,
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
              itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
              onRatingUpdate: (rating) {},
            ),
          ),
        ],
      ),
    );
  }
}
