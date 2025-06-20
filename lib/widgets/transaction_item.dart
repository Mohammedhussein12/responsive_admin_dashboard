import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/models/transaction_model.dart';
import 'package:responsive_admin_dashboard/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  final TransactionModel transaction;

  const TransactionItem({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(12),
      ),
      color: Color(0xffFAFAFA),
      child: ListTile(
        title: Text(
          transaction.title,
          style: AppStyles.styleSemiBold16(
            context,
          ).copyWith(color: Color(0xff064060)),
        ),
        subtitle: Text(
          transaction.date,
          style: AppStyles.styleRegular16(context).copyWith(
            color: Color(0xffAAAAAA),
          ),
        ),
        trailing: Text(
          '\$${transaction.amount}',
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: transaction.isWithdrawal
                ? Color(0xffF3735E)
                : Color(0xff7CD87A),
          ),
        ),
      ),
    );
  }
}
