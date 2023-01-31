import 'package:flutter/material.dart';

class RedesignHomePage extends StatelessWidget {
  const RedesignHomePage({Key? key}) : super(key: key);

  /*
      var number = [6, 7, 8, 9]
  *   var data = [1, 2, 3, 4 ,5, ...number]
  *
  *
  *
  *
  * */

  List<HomeMenu> _menus() {
    return [
      HomeMenu('icon6.png', '1. Registrasi', 'done'),
      HomeMenu('icon1.png', '2. Pembayaran Biaya', 'current'),
      HomeMenu('icon2.png', '3. Validasi Form Pendaftaran'),
      HomeMenu('icon3.png', '4. Kelengkapan Dokumen'),
      HomeMenu('icon4.png', '5. Ujian Masuk'),
      HomeMenu('icon5.png', '6. Hasil Seleksi'),
    ];
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
        // color: Color(0xff37517E),
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
                // color: Colors.red,
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
                  Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 9),
                        decoration: BoxDecoration(
                            color: const Color(0xffF5F5F5),
                            borderRadius: BorderRadius.circular(20)),
                        height: 15,
                        width: MediaQuery.of(context).size.width,
                        // color: Color(0xffF5F5F5),
                      ),
                      Container(
                          margin: const EdgeInsets.only(top: 9),
                          decoration: BoxDecoration(
                              color: const Color(0xff37517E),
                              borderRadius: BorderRadius.circular(50)),
                          height: 15,
                          width: MediaQuery.of(context).size.width * 0.1)
                    ],
                  ),
                  ..._menus().map((e) => _menu(context, menu: e)).toList(),
                  /*
                  _menu(
                    context,
                    menu: HomeMenu('icon6.png', '1. Registrasi', 'done'),
                  ),
                  _menu(
                    context,
                    menu:
                        HomeMenu('icon1.png', '2. Pembayaran Biaya', 'current'),
                  ),
                  _menu(
                    context,
                    menu: HomeMenu('icon2.png', '3. Validasi Form Pendaftaran'),
                  ),
                  _menu(
                    context,
                    menu: HomeMenu('icon3.png', '4. Kelengkapan Dokumen'),
                  ),
                  _menu(
                    context,
                    menu: HomeMenu('icon4.png', '5. Ujian Masuk'),
                  ),
                  _menu(
                    context,
                    menu: HomeMenu('icon5.png', '6. Hasil Seleksi'),
                  ),*/
                ]),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.14),
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
            ),
          ],
        ),
      ),
    );
  }

  _menu(BuildContext context, {required HomeMenu menu}) {
    Color borderColor = const Color(0xffF5F5F5);
    Color textColor = const Color(0xffD9D9D9);
    Widget statusUI = Container();

    if (menu.status == 'done') {
      borderColor = const Color(0xff28A745);
      textColor = const Color(0xff28A745);
      statusUI = Image.asset('assets/icons/icon7.png', height: 15, width: 15);
    } else if (menu.status == 'current') {
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
      margin: const EdgeInsets.only(top: 8, bottom: 8),
      height: 30,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(border: Border.all(color: borderColor)),
      child: Row(
        children: [
          Image.asset('assets/icons/${menu.icon}', height: 15, width: 15),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                menu.title,
                style: TextStyle(
                  color: textColor,
                  fontWeight: menu.status == 'disable'
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

class HomeMenu {
  final String icon;
  final String title;
  final String status; // done , current, disable

  HomeMenu(this.icon, this.title, [this.status = 'disable']);
}
