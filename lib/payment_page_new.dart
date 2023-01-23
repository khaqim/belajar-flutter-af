import 'package:flutter/material.dart';

class PaymentPageNew extends StatelessWidget {
  const PaymentPageNew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: ListView(
          children: [
            _warningUI(),
            ..._buildBankInfoUI(),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildBankInfoUI() {
    return [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Transfer BANK BNI',
            style: _boldStyle().copyWith(fontSize: 20),
          ),
          Image.asset(
            'assets/images/bni.png.png',
            width: 60,
            height: 20,
          )
        ],
      ),
      Container(height: 24),
      Container(
        margin: const EdgeInsets.only(bottom: 8),
        padding: const EdgeInsets.only(left: 16, bottom: 8),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: const Color(0xff17719B).withOpacity(0.1),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RichText(
              text: TextSpan(
                text: 'No. Rekening\n',
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  height: 1.8,
                ),
                children: [
                  TextSpan(
                    text: '0210-9621-52 ',
                    style: _boldStyle(),
                  ),
                  const TextSpan(text: 'a.n '),
                  TextSpan(
                    text: 'Muhammad Fatikh',
                    style: _boldStyle(),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.copy,
                color: Color(0xff17719B),
                size: 20,
              ),
            )
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.only(left: 16, bottom: 8),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: const Color(0xff17719B).withOpacity(0.1),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RichText(
              text: TextSpan(
                text: 'Jumlah\n',
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  height: 1.8,
                ),
                children: [
                  TextSpan(
                    text: 'Rp 300.000',
                    style: _boldStyle().copyWith(color: Colors.red),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.copy,
                color: Color(0xff17719B),
                size: 20,
              ),
            )
          ],
        ),
      ),
    ];
  }

  TextStyle _boldStyle() {
    return const TextStyle(color: Colors.black, fontWeight: FontWeight.bold);
  }

  Widget _warningUI() {
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xffFBE0E0),
        border: Border.all(color: const Color(0xffB86B6B)),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      child: RichText(
        text: TextSpan(
          text: 'Perhatian!\n',
          style: _boldStyle(),
          children: const [
            TextSpan(
                text: 'Harap melakukan pembayaran biaya pendaftaran sesuai '
                    'ketentuan berikut ini',
                style: TextStyle(fontWeight: FontWeight.normal))
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      centerTitle: true,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: Container(
          decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: const BorderRadius.all(Radius.circular(35))),
          width: 35,
          height: 35,
          child: const Icon(Icons.arrow_back, color: Colors.black54, size: 25),
        ),
      ),
      title: const Text(
        'Pembayaran',
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
