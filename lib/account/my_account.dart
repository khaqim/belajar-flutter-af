import 'package:flutter/material.dart';
import 'package:tugas_1/account/menu_ui.dart';

class MyAccountHome extends StatelessWidget {
  const MyAccountHome({Key? key}) : super(key: key);

  List<AccountMenu> _mymenu() {
    var data = [
      AccountMenu('Nama', 'Muhammad Wildan Suyuti'),
      AccountMenu('NIK (Nomor Induk Kependudukan)', '3510201205930001'),
      AccountMenu('Whatsapp', '085234479684'),
      AccountMenu('Password', 'Lihat pesan Whatsapp anda', true),
      AccountMenu('Mendaftar Tanggal', '08 Juni 2022 10:54'),
    ];

    var result = data.map((e) {
      return e;
    }).toList();

    return result;
  }

  List<Widget> _menuWidget() {
    return _mymenu().map((e) => AccountMenuUI(menu: e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Akun Saya'),
          centerTitle: true,
          backgroundColor: const Color(0xff37517E),
          leading:
              IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back))),
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              color: const Color(0xff37517E),
              height: MediaQuery.of(context).size.height * 0.3,
            ),
            Opacity(
              opacity: 0.2,
              child: Image.asset(
                'assets/images/gambar.JPG',
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fill,
                height: MediaQuery.of(context).size.height * 0.3,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  padding: const EdgeInsets.only(top: 10, right: 16, left: 16),
                  width: double.infinity,
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height * 0.63,
                  child: ListView(
                    children: [
                      const Text('IL-MTS PA',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center),
                      const Text('I’dad Lughoh - Madrasah Tsanawiyah Putra',
                          textAlign: TextAlign.end,
                          style: TextStyle(fontSize: 12)),
                      ..._menuWidget(),
                      Container(
                        margin: EdgeInsets.only(top: 100, bottom: 30),padding: EdgeInsets.only(bottom: 10,top: 10),
                        child: Text('Unduh Data Pendaftar',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: Colors.white, fontSize: 16)),
                        height: 40,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Color(0xff17719B),
                            borderRadius: BorderRadius.circular(30)),
                      )
                    ],
                  )),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.2),
              width: 85,
              height: 85,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 5,
                        spreadRadius: 5,
                        offset: const Offset(0, 2))
                  ],
                  borderRadius: const BorderRadius.all(Radius.circular(150)),
                  color: Colors.white),
              child: Image.asset(
                'assets/images/logo.jpg',
                width: 10,
                height: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AccountMenu {
  final String name;
  final String note;
  final bool isPassword;

  AccountMenu(this.name, this.note, [this.isPassword = false]);
}
