import 'package:flutter/material.dart';
import 'package:tugas_1/home/menu_ui.dart';

import 'home_menu.dart';

/*
-> Progres maksimal = 6 = size.width ambil dari mediaqueery
-> size width maksimal / 6 = width untuk masing2 menu

1 ambil panjang maksimal
size width di bagi 6  = masing2 menu
kemudian di kalikan sesuai nomer menunya untuk dapat progressnya.
 */

class RedesignHomePage extends StatelessWidget {
  final int activeMenuNumber;

  const RedesignHomePage({Key? key, required this.activeMenuNumber})
      : super(key: key);

  List<HomeMenu> _menus() {
    var data = [
      HomeMenu('icon6.png', '1. Registrasi'),
      HomeMenu('icon1.png', '2. Pembayaran Biaya'),
      HomeMenu('icon2.png', '3. Validasi Form Pendaftaran'),
      HomeMenu('icon3.png', '4. Kelengkapan Dokumen'),
      HomeMenu('icon4.png', '5. Ujian Masuk'),
      HomeMenu('icon5.png', '6. Hasil Seleksi'),
    ];

    var result = data.map((e) {
      int position = data.indexOf(e) + 1;
      if (activeMenuNumber == 0 || position < activeMenuNumber) {
        e.status = HomeStatus.done;
      } else if (position == activeMenuNumber) {
        e.status = HomeStatus.current;
      }
      return e;
    }).toList();

    return result;
  }

  List<Widget> _menuWidget(BuildContext context) {
    return _menus().map((e) => MenuUI(menu: e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Luqman Hakim',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff37517E),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.person))],
      ),
      body: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Container(
              color: const Color(0xff37517E),
              height: MediaQuery.of(context).size.height * 0.3,
            ),
            Opacity(
              opacity: 0.2,
              child: Image.asset(
                'assets/images/gambar.JPG',
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height * 0.3,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23, top: 26, right: 26),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('PSB-Online',
                      style: TextStyle(fontSize: 24, color: Colors.white)),
                  Text('Ma’had Al-Furqon Al-Islami Gresik',
                      style: TextStyle(fontSize: 14, color: Colors.white)),
                  Text(
                      'Selamat datang di Aplikasi Pendaftaran Santri Baru Online',
                      style: TextStyle(fontSize: 12, color: Colors.white))
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: const EdgeInsets.only(top: 96, right: 16, left: 16),
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.65,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20)),
                    color: Colors.white),
                child: ListView(children: [
                  const Padding(
                    padding: EdgeInsets.all(3.0),
                    child: Text(
                      'IL-MTS PA',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(3.0),
                    child: Text(
                      'I’dad Lughoh - Madrasah Tsanawiyah Putra',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(3.0),
                    child: Text(
                      'Selesaikan 6 langkah berikut, untuk mendaftar',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  _progressUI(context),
                  ..._menuWidget(context),
                ]),
              ),
            ),
            _logoUI(context),
          ],
        ),
      ),
    );
  }

  _logoUI(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.14),
        // color: Colors.red,
        width: 150,
        height: 150,
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
    );
  }

  _progressUI(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double percentage = width / 6;
    double progressWidth = percentage;

    if (activeMenuNumber == 0) {
      progressWidth = width;
    } else if (activeMenuNumber > 2) {
      progressWidth = percentage * (activeMenuNumber - 1);
    }

    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 9),
          decoration: BoxDecoration(
              color: const Color(0xffF5F5F5),
              borderRadius: BorderRadius.circular(20)),
          height: 15,
          width: width,
        ),
        Container(
            margin: const EdgeInsets.only(top: 9),
            decoration: BoxDecoration(
                color: const Color(0xff37517E),
                borderRadius: BorderRadius.circular(50)),
            height: 15,
            width: progressWidth)
      ],
    );
  }
}
