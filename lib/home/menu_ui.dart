import 'package:flutter/material.dart';
import 'package:tugas_1/home/home_menu.dart';

class MenuUI extends StatelessWidget {
  final HomeMenu menu;

  const MenuUI({Key? key, required this.menu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color borderColor = const Color(0xffF5F5F5);
    Color textColor = const Color(0xffD9D9D9);
    Widget statusUI = Container();

    if (menu.status == HomeStatus.done) {
      borderColor = const Color(0xff28A745);
      textColor = const Color(0xff28A745);
      statusUI = Image.asset('assets/icons/icon7.png', height: 15, width: 15);
    } else if (menu.status == HomeStatus.current) {
      textColor = Colors.black;
      statusUI = GestureDetector(
        onTap: () {
          debugPrint("Tombol selesaikan di tekan");
        },
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Text('Selesaikan',
                  style: TextStyle(color: Color(0xff17719B))),
            ),
            Image.asset('assets/icons/icon8.png', height: 15, width: 15),
          ],
        ),
      );
    }

    return Container(
      padding: const EdgeInsets.only(left: 5, right: 5),
      margin: const EdgeInsets.only(top: 8),
      height: 30,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(border: Border.all(color: borderColor)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset('assets/icons/${menu.icon}',
              height: 15, width: 15, color: textColor),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                menu.title,
                style: TextStyle(
                  color: textColor,
                  fontWeight: menu.status == HomeStatus.disable
                      ? FontWeight.normal
                      : FontWeight.bold,
                ),
              ),
            ),
          ),
          statusUI,
        ],
      ),
    );
  }
}
