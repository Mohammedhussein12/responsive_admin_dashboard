import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/utils/app_styles.dart';
import 'package:responsive_admin_dashboard/widgets/dots_indicator.dart';
import 'package:responsive_admin_dashboard/widgets/my_cards_page_view.dart';

class MyCardsSection extends StatefulWidget {
  const MyCardsSection({super.key});

  @override
  State<MyCardsSection> createState() => _MyCardsSectionState();
}

class _MyCardsSectionState extends State<MyCardsSection> {
  late PageController pageController;
  int currentPageIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentPageIndex = pageController.page!.toInt().round();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 420,
          child: Text('My Card', style: AppStyles.styleSemiBold20(context)),
        ),
        SizedBox(
          height: 20,
        ),
        MyCardsPageView(
          pageController: pageController,
        ),
        SizedBox(
          height: 20,
        ),
        DotsIndicator(currentPageIndex: currentPageIndex),
      ],
    );
  }
}
