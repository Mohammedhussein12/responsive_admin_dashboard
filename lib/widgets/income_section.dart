import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_admin_dashboard/widgets/income_section_body.dart';
import 'package:responsive_admin_dashboard/widgets/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            IncomeSectionHeader(),
            IncomeSectionBody(),
          ],
        ),
      ),
    );
  }
}
