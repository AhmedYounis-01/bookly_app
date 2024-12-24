import 'package:bookly_app/Features/splash/presentaion/view/widgets/sliding_text.dart';
import 'package:bookly_app/core/util/app_router.dart';
import 'package:bookly_app/core/util/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    Future.delayed(const Duration(seconds: 3), () {
      // ignore: use_build_context_synchronously
      GoRouter.of(context).push(AppRouter.kHomeView);
    });
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Image(
          image: AssetImage(
            AssetsData.logo,
          ),
        ),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initSlidingAnimation() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slidingAnimation = Tween(begin: const Offset(0, 5), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }
}
