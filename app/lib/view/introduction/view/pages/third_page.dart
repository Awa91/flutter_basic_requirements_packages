import 'package:app/core/extension/context/context_extension.dart';
import 'package:app/view/introduction/view-model/intro_pages.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';

class ThirdPage {
  const ThirdPage._();
  static final PageViewModel page = PageViewModel(
    titleWidget: const PageContent(),
    body: IntroPages.thirdPage.body,
  );
}

class PageContent extends StatelessWidget {
  const PageContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.introImageTitle,
      child: Column(
        children: [
          context.normalSpace,
          Expanded(child: Lottie.asset(IntroPages.thirdPage.path)),
          context.normalSpace,
          Text(
            IntroPages.thirdPage.title,
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
