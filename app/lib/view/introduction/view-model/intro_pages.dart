import 'package:app/product/enum/intro_enums.dart';
import 'package:app/product/init/lang/locale_keys.g.dart';
import 'package:app/view/introduction/model/page_model.dart';
import 'package:app/view/introduction/view/pages/first_page.dart';
import 'package:app/view/introduction/view/pages/second_page.dart';
import 'package:app/view/introduction/view/pages/third_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroPages {
  const IntroPages._();

  static final Page firstPage = Page(
    path: IntroEnums.app.toJson,
    title: LocaleKeys.introIntroTitleFirst.tr(),
    body: LocaleKeys.introIntroDescriptionFirst.tr(),
  );
  static final Page secondPage = Page(
    path: IntroEnums.work.toJson,
    title: LocaleKeys.introIntroTitleSecond.tr(),
    body: LocaleKeys.introIntroDescriptionSecond.tr(),
  );
  static final Page thirdPage = Page(
    path: IntroEnums.commerce.toJson,
    title: LocaleKeys.introIntroTitleThird.tr(),
    body: LocaleKeys.introIntroDescriptionThird.tr(),
  );

  static List<PageViewModel> pageList = [
    FirstPage.page,
    SecondPage.page,
    ThirdPage.page,
  ];
}
