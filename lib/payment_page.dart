import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          title:
              const Text('Pembayaran', style: TextStyle(color: Colors.black)),
          centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 26),
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  border:
                      Border.all(color: const Color(0xffB86B6B), width: 0.5),
                  color: const Color(0xffFBE0E0),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Perhatian!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                        'Harap melakukan pembayaran biaya pendaftaran sesuai ketentuan berikut ini'),
                  ]),
            ),
            Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Transfer BANK BNI',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  Image(
                    image: AssetImage('assets/images/bni.png.png'),
                    height: 70,
                    width: 70,
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 15),
                padding: const EdgeInsets.only(left: 16),
                decoration: const BoxDecoration(
                    border:
                        Border(bottom: BorderSide(color: Color(0xff17719B1A)))),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('No. Rekening',
                              style: TextStyle(fontSize: 15)),
                          RichText(
                            text: const TextSpan(
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: '0210-9621-52',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(text: ' a.n '),
                                  TextSpan(
                                      text: 'Muhammad Fatikh',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold))
                                ]),
                          ),
                        ],
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.content_copy))
                    ]),
              )
            ]),
            Container(
              margin: const EdgeInsets.only(top: 15),
              padding: const EdgeInsets.only(left: 16),
              decoration: const BoxDecoration(
                  border:
                      Border(bottom: BorderSide(color: Color(0xff17719B1A)))),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Jumlah', style: TextStyle(fontSize: 15)),
                        RichText(
                          text: const TextSpan(
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Rp 300.000',
                                    style: TextStyle(color: Colors.red))
                              ]),
                        ),
                      ],
                    ),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.content_copy))
                  ]),
            ),
            Container(
              margin: const EdgeInsets.only(top: 40),
              decoration: BoxDecoration(
                  color: const Color(0xff17719B0D),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(children: [
                Container(
                    margin: const EdgeInsets.only(top: 17, left: 14, right: 26),
                    child: RichText(
                      text: const TextSpan(
                          style: TextStyle(fontSize: 15, color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Setelah transfer: ',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    'lakukan konfirmasi pembayaran dengan cara ketik: '),
                            TextSpan(
                                text:
                                    'NAMA#NO WA#DOMISILI#NO NIK#NOMINAL#TGL TRANSFER',
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ]),
                    )),
                Container(
                    margin: const EdgeInsets.only(top: 17, left: 14, right: 30),
                    child: const Text(
                      'CONTOH: ZAID#0812-9298-6033#SURABAYA #352786929300056#300.000# 9-10-2021',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                Container(
                  margin: const EdgeInsets.only(
                      right: 11, left: 14, bottom: 15, top: 15),
                  child: RichText(
                    text: const TextSpan(
                        style: TextStyle(fontSize: 15, color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'lalu ',
                          ),
                          TextSpan(
                              text: 'KIRIM WA ',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: 'beserta '),
                          TextSpan(
                              text: 'Bukti Transfer ',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: 'ke nomer '),
                          TextSpan(
                              text: '0812-9298-6033 ',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: '(WhatsApp)'),
                        ]),
                  ),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
