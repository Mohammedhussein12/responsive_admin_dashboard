import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_admin_dashboard/widgets/inactive_and_active_all_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  final AllExpensesItemModel itemModel;
  final bool isSelected;

  const AllExpensesItem({
    super.key,
    required this.itemModel,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpensesItem(itemModel: itemModel)
        : InActiveAllExpensesItem(itemModel: itemModel);
  }
}
