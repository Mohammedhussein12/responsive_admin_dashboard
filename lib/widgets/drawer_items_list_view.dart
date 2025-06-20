import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/models/drawer_item_model.dart';
import 'package:responsive_admin_dashboard/utils/app_images.dart';
import 'package:responsive_admin_dashboard/widgets/drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  int activeIndex = 0;
  final List<DrawerItemModel> drawerItems = [
    DrawerItemModel(
      title: 'Dashboard',
      image: AppImages.imagesDashboard,
    ),
    DrawerItemModel(
      title: 'My Transaction',
      image: AppImages.imagesMyTransaction,
    ),
    DrawerItemModel(
      title: 'Statistics',
      image: AppImages.imagesStatistics,
    ),
    DrawerItemModel(
      title: 'Wallet Account',
      image: AppImages.imagesWalletAccount,
    ),
    DrawerItemModel(
      title: 'My Investments',
      image: AppImages.imagesMyInvestments,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: drawerItems.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          setState(() {
            if (activeIndex != index) {
              activeIndex = index;
            }
          });
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: DrawerItem(
            drawerItem: drawerItems[index],
            isActive: activeIndex == index,
          ),
        ),
      ),
    );
  }
}
