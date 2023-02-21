import 'package:flutter/material.dart';
import 'my_account.dart';

class AccountMenuUI extends StatelessWidget {
  final AccountMenu menu;

  const AccountMenuUI({Key? key, required this.menu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 26),
      margin: const EdgeInsets.only(top: 20, bottom: 16),
      height: 45,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Color(0xff17719B1A), width: 1.0))),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(menu.name, style: const TextStyle(fontWeight: FontWeight.bold)),
        Text(
          menu.note,
          style: TextStyle(
              height: 1.5,
              color: menu.isPassword ? const Color(0xff17719B) : Colors.black),
        ),
      ]),
    );
  }
}
