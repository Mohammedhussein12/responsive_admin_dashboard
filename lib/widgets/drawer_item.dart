import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/models/drawer_item_model.dart';
import 'package:responsive_admin_dashboard/widgets/active_and_inactive_item.dart';

class DrawerItem extends StatelessWidget {
  final DrawerItemModel drawerItem;
  final bool isActive;

  const DrawerItem({
    super.key,
    required this.drawerItem,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(drawerItem: drawerItem)
        : InactiveDrawerItem(drawerItem: drawerItem);
  }
}
