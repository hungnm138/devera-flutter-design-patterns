import 'package:flutter/material.dart';

import '../../../../constants/constants.dart';
import '../../../../design_patterns/bridge/bridge.dart';

class CustomersDatatable extends StatelessWidget {
  final List<Customer> customers;

  const CustomersDatatable({
    required this.customers,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        columnSpacing: Dimens.spaceM,
        horizontalMargin: Dimens.marginM,
        headingRowHeight: Dimens.spaceXL,
        dataRowHeight: Dimens.spaceXL,
        columns: const <DataColumn>[
          DataColumn(
            label: Text(
              'Name',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
            ),
          ),
          DataColumn(
            label: Text(
              'E-mail',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
            ),
          ),
        ],
        rows: <DataRow>[
          for (var customer in customers)
            DataRow(
              cells: <DataCell>[
                DataCell(Text(customer.name)),
                DataCell(Text(customer.email)),
              ],
            ),
        ],
      ),
    );
  }
}
