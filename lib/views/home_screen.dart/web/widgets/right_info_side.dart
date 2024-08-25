import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yahya_portfolio/services/controller_services/portfolio_controller.dart';
import 'package:yahya_portfolio/services/utils/constants.dart';
import 'package:yahya_portfolio/views/home_screen.dart/web/widgets/top_bar_options.dart';

class RideSidePortFolioHome extends StatefulWidget {
  const RideSidePortFolioHome({super.key});

  @override
  State<RideSidePortFolioHome> createState() => _RideSidePortFolioHomeState();
}

class _RideSidePortFolioHomeState extends State<RideSidePortFolioHome>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        topBar(context: context, animationController: animationController),
        Expanded(child: projectShowCase(context: context)),
      ],
    );
  }

  Widget projectShowCase({required BuildContext context}) {
    final controller = Get.find<PortfolioController>();
    Size size = MediaQuery.of(context).size;

    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            controller.showProjectDetails.value = true;
          },
          child: SizedBox(
            height: size.height * 0.9,
            width: size.width * 0.6,
            child: CarouselSlider(
                items: AppConstants.photo,
                options: CarouselOptions(
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.5,
                  initialPage: 0,
                  enableInfiniteScroll: false,
                  reverse: false,
                  autoPlay: false,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.6,
                  scrollDirection: Axis.horizontal,
                )),
          ),
        );
      },
    );
  }
}
