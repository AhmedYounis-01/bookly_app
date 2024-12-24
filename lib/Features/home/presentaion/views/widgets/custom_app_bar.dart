import 'package:bookly_app/core/util/app_router.dart';
import 'package:bookly_app/core/util/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.only(
            top: 40,
            bottom: 20,
          ),
          child: Row(
            children: [
              Image.asset(
                AssetsData.logo,
                height: 80,
              ),
              const Spacer(),
              IconButton(
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.kSearchView);
                },
                icon: const Icon(FontAwesomeIcons.magnifyingGlass, size: 24),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
