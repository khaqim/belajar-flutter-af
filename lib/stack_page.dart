import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Luqman Hakim',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff37517E),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.person))],
      ),
      body: SizedBox(
        // color: Color(0xff37517E),
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Container(
              color: Color(0xff37517E),
              height: MediaQuery.of(context).size.height * 0.3,
            ),
            Opacity(
              opacity: 0.2,
              child: Image.asset(
                'assets/images/gambar.JPG',
                fit: BoxFit.fill,
                height: MediaQuery.of(context).size.height * 0.3,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23, top: 26, right: 26),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                padding: EdgeInsets.only(top: 96, right: 16, left: 16),
                // color: Colors.red,
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.65,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20)),
                    color: Colors.white),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text(
                      'IL-MTS PA',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text(
                      'I’dad Lughoh - Madrasah Tsanawiyah Putra',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text(
                      'Selesaikan 6 langkah berikut, untuk mendaftar',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 9),
                        decoration: BoxDecoration(
                            color: Color(0xffF5F5F5),
                            borderRadius: BorderRadius.circular(20)),
                        height: 15,
                        width: MediaQuery.of(context).size.width,
                        // color: Color(0xffF5F5F5),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 9),
                          decoration: BoxDecoration(
                              color: Color(0xff37517E),
                              borderRadius: BorderRadius.circular(50)),
                          height: 15,
                          width: MediaQuery.of(context).size.width * 0.1)
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    child: Row(
                      children: [
                        Image.asset('assets/icons/icon6.png',
                            height: 15, width: 15),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text('1. Registrasi',
                              style: TextStyle(
                                  color: Color(0xff28A745),
                                  fontWeight: FontWeight.bold)),
                        ),
                        Expanded(child: Container()),
                        Image.asset('assets/icons/icon7.png',
                            height: 15, width: 15),
                      ],
                    ),
                    margin: EdgeInsets.only(top: 8, bottom: 8),
                    height: 30,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff28A745))),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    child: Row(children: [
                      Image.asset('assets/icons/icon1.png',
                          height: 15, width: 15),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text('2. Pembayaran Biaya ',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      Expanded(child: Container()),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text('Selesaikan',
                            style: TextStyle(color: Color(0xff17719B))),
                      ),
                      Image.asset('assets/icons/icon8.png',
                          height: 15, width: 15),
                    ]),
                    margin: EdgeInsets.only(top: 5, bottom: 5),
                    height: 30,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffF5F5F5))),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('assets/icons/icon2.png',
                              height: 15, width: 15),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              '3. Validasi Form Pendaftaran',
                              style: TextStyle(color: Color(0xffD9D9D9)),
                            ),
                          )
                        ]),
                    margin: EdgeInsets.only(top: 5, bottom: 5),
                    height: 30,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffF5F5F5))),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    child: Row(children: [
                      Image.asset('assets/icons/icon3.png',
                          height: 15, width: 15),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text('4. Kelengkapan Dokumen',
                            style: TextStyle(color: Color(0xffD9D9D9))),
                      ),
                    ]),
                    margin: EdgeInsets.only(top: 5, bottom: 5),
                    height: 30,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffF5F5F5))),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    child: Row(children: [
                      Image.asset('assets/icons/icon4.png',
                          height: 15, width: 15),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text('5. Ujian Masuk',
                            style: TextStyle(color: Color(0xffD9D9D9))),
                      ),
                    ]),
                    margin: EdgeInsets.only(top: 8, bottom: 8),
                    height: 30,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffF5F5F5))),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    child: Row(children: [
                      Image.asset('assets/icons/icon5.png',
                          height: 15, width: 15),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text('6. Hasil Seleksii',
                            style: TextStyle(color: Color(0xffD9D9D9))),
                      ),
                    ]),
                    margin: EdgeInsets.only(top: 8, bottom: 8),
                    height: 30,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffF5F5F5))),
                  ),
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
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 5,
                          spreadRadius: 5,
                          offset: Offset(0, 2))
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(150)),
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
}
