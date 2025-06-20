import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_admin_dashboard/models/drawer_item_model.dart';
import 'package:responsive_admin_dashboard/utils/app_styles.dart';

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.drawerItem,
  });

  final DrawerItemModel drawerItem;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItem.image),
      title: FittedBox(
        alignment: AlignmentDirectional.topStart,
        fit: BoxFit.scaleDown,
        child: Text(
          drawerItem.title,
          style: AppStyles.styleBold16(context),
        ),
      ),
      trailing: Container(
        width: 3.27,
        decoration: BoxDecoration(
          color: Color(0xff4Ef7b2),
        ),
      ),
    );
  }
}

class InactiveDrawerItem extends StatelessWidget {
  const InactiveDrawerItem({
    super.key,
    required this.drawerItem,
  });

  final DrawerItemModel drawerItem;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItem.image),
      title: FittedBox(
        alignment: AlignmentDirectional.topStart,
        fit: BoxFit.scaleDown,
        child: Text(
          drawerItem.title,
          style: AppStyles.styleMedium16(context),
        ),
      ),
    );
  }
}
