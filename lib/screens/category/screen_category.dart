import 'package:flutter/material.dart';
import 'package:money_manager/db/category/category_db.dart';
import 'package:money_manager/screens/category/expense_category_list.dart';
import 'package:money_manager/screens/category/income_category_list.dart';

class ScreenCategory extends StatefulWidget {
  const ScreenCategory({Key? key}) : super(key: key);

  @override
  State<ScreenCategory> createState() => _ScreenCategoryState();
}

class _ScreenCategoryState extends State<ScreenCategory>
    with SingleTickerProviderStateMixin {
  late TabController _tabcontroller;

  @override
  void initState() {
    super.initState();
    CategoryDB().refreshed();
    _tabcontroller = TabController(length: 2, vsync: this);
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: _tabcontroller,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          tabs: const [
            Tab(
              text: "INCOME",
            ),
            Tab(
              text: "EXPENSE",
            ),
          ],
        ),
        Expanded(
          child: TabBarView(
              controller: _tabcontroller,
              children: const [IncomeCategoryList(), ExpenseCategoryList()]),
        ),
      ],
    );
  }
}
