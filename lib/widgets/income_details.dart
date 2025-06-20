import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/models/item_details_model.dart';
import 'package:responsive_admin_dashboard/widgets/income_item_details.dart';

class IncomeDetails extends StatelessWidget {
  static const List<ItemDetailsModel> itemDetails = [
    ItemDetailsModel(
      title: 'Design service',
      value: '40',
      color: Color(0xff208CC8),
    ),
    ItemDetailsModel(
      title: 'Design product',
      value: '25',
      color: Color(0xff4EB7F2),
    ),
    ItemDetailsModel(
      title: 'Product royalti',
      value: '20',
      color: Color(0xff064061),
    ),
    ItemDetailsModel(
      title: 'Other',
      value: '22',
      color: Color(0xffE2DECD),
    ),
  ];

  const IncomeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: itemDetails
          .map((e) => IncomeItemDetails(itemDetailsModel: e))
          .toList(),
    );
  }
}
