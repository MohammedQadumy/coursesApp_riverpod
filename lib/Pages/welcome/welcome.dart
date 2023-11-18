import 'package:dots_indicator/dots_indicator.dart';
import 'package:ecommerce_riverpod/Pages/notifier/welcome_notifier.dart';
import 'package:ecommerce_riverpod/Pages/welcome/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



class Welcome extends ConsumerWidget {
  Welcome({super.key});

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context , WidgetRef ref) {

    final index = ref.watch(indexDotProvider);

    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            margin: EdgeInsets.only(top: 30),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                PageView(
                  onPageChanged: (value) {
                    ref.read(indexDotProvider.notifier).changeIndex(value);
                    },
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  children: [
                    appOnboardingPage(
                        imagePath: "assets/images/reading.png",
                        title: "First see Learning",
                        subTitle:
                            "Forget about of paper all knowledge in one learning ",
                        index: 1,
                        controller: _controller),
                    appOnboardingPage(
                        imagePath: "assets/images/man.png",
                        title: "Connect With Everyone",
                        subTitle:
                            "Always keep in touch wth your tutor and friends. Let's get connection",
                        index: 2,
                        controller: _controller),
                    appOnboardingPage(
                        imagePath: "assets/images/boy.png",
                        title: "Always Facincated Learning",
                        subTitle:
                            "Anywhere,anytime. The time is at your discretion . So study wherever",
                        index: 3,
                        controller: _controller),
                  ],
                ),
                Positioned(
                  bottom: 50,
                  child: DotsIndicator(
                    position: index,
                    dotsCount: 3,
                    decorator: const DotsDecorator(
                      size: Size.square(9.0),
                      activeSize: Size(24.0, 8.0),
                      activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
