import 'package:final_project_odc/core/utils/app_images.dart';
import 'package:final_project_odc/features/on_boarding/presentation/view/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          isVisible:true
             ,
          image: Assets.imagesPageViewItem1Image,
          backgroungImage: Assets.imagesPageViewItem1BackgroundImage,
          subTitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("مرحبًا بك في"),
              Text("Fruit"),
              Text("HUB"),
            ],
          ),
        ),
        PageViewItem(
          isVisible:
              (pageController.hasClients ? pageController.page!.round() : 0) ==
                  0,
          image: Assets.imagesPageViewItem2Image,
          backgroungImage: Assets.imagesPageViewItem2BackgroundImage,
          subTitle:
              'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
          title: Text("ابحث وتسوق",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xff0C0D0D),
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  height: 0)),
        ),
      ],
    );
  }
}
