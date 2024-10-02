import 'package:flutter/material.dart';

class DetailProduk extends StatefulWidget {
  @override
  _DetailProdukState createState() => _DetailProdukState();
}

class _DetailProdukState extends State<DetailProduk> {
  String _namaProduk = 'Gitar Akustik'; 
  String _deskripsiProduk = 'Yamaha FX400 adalah gitar akustik dengan desain elegan yang menggabungkan estetika klasik dengan teknologi modern. Dikenal karena kualitas suara yang kaya dan resonan, gitar ini memiliki bodi yang nyaman, serta bagian atas terbuat dari kayu solid untuk menghasilkan nada yang hangat dan jernih. Dilengkapi dengan sistem pickup, FX400 juga cocok untuk penampilan di panggung, memungkinkan pemain untuk memperkuat suara akustiknya dengan mudah. Dengan kombinasi craftsmanship yang baik dan performa yang handal, Yamaha FX400 menjadi pilihan populer bagi musisi dari berbagai genre.';
  String _hargaProduk = 'Rp 1.000.000'; 

 void _beliProduk() {
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      backgroundColor: Colors.green,
      content: Text('Pembelian berhasil!!'),
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Produk'),
        backgroundColor: const Color.fromARGB(255, 17, 27, 51),
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Gambar produk
            Container(
              width: double.infinity,
              height: 200,
              child: Image.asset('assets/gitar.jpg'), 
            ),
            SizedBox(height: 20),

            Row(
              children: [
                Expanded(
                  child: Text(
                    _namaProduk,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                const Row(
                  children: [
                    Text('Rate:'),
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.grey),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),

   
            const Text(
              'Deskripsi',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),

            // Deskripsi produk
            Text(
              _deskripsiProduk,
              style: TextStyle(fontSize: 14),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 20),

            // Label price
            const Text(
              'Harga:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),

            // Harga produk
            Text(
              _hargaProduk,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),

            // Tombol beli
            ElevatedButton(
              onPressed: _beliProduk,
              child: Text('Beli'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(0, 40), // Atur ukuran tombol
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}