import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/utils/size_config.dart';
import 'package:responsive_admin_dashboard/widgets/adaptive_layout_widget.dart';
import 'package:responsive_admin_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_admin_dashboard/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_admin_dashboard/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_admin_dashboard/widgets/dashboard_tablet_layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
              backgroundColor: Color(0xffFAFAFA),
              elevation: 0,
              leading: IconButton(
                onPressed: () {
                  _scaffoldKey.currentState?.openDrawer();
                },
                icon: Icon(Icons.menu),
              ),
            )
          : null,
      backgroundColor: Color(0xffF9F7FA),
      drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? CustomDrawer()
          : null,
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => DashboardMobileLayout(),
        tabletLayout: (context) => DashboardTabletLayout(),
        desktopLayout: (context) => DashboardDesktopLayout(),
      ),
    );
  }
}
