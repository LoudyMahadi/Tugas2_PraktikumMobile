import 'package:flutter/material.dart';
import 'package:tugas2/profile/profile.dart';
import 'package:tugas2/details/detail_produk.dart';

class HomePage extends StatefulWidget {
  final String username;
  const HomePage({super.key, required this.username});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Home Page"),
        backgroundColor: const Color.fromARGB(255, 17, 27, 51),
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage(username: widget.username)),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
  child: Column(
    children: [
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            SizedBox(height: 20), // Tambahkan ruang kosong di atas SingleChildScrollView
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 350,
                  height: 200,
                  alignment: Alignment.center,
                  child: Image.asset('assets/promo1.jpeg'), // Ganti dengan gambar 1
                ),
                SizedBox(width: 20,),
                Container(
                  width: 350,
                  height: 200,
                  alignment: Alignment.center,
                  child: Image.asset('assets/promo2.jpg'), // Ganti dengan gambar 2
                ),
                SizedBox(width: 20,),
                Container(
                  width: 350,
                  height: 200,
                  alignment: Alignment.center,
                  child: Image.asset('assets/promo3.jpg'), // Ganti dengan gambar 3
                ),
              ],
            ),
          ],
        ),
      ),
            Text(
              "Hai ${widget.username} Selamat Datang",
              textAlign: TextAlign.left,
              style: const TextStyle(fontSize: 18),
            ),
 GridView.builder(
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: MediaQuery.of(context).orientation == Orientation.portrait ? 2 : 3,
    crossAxisSpacing: 10,
    mainAxisSpacing: 10,
    childAspectRatio: 1,
  ),
  itemCount: 4,
  shrinkWrap: true,
  physics: NeverScrollableScrollPhysics(),
  itemBuilder: (context, index) {
    return Card(
      child: Column(
        children: [
          Expanded(
            child: Image.asset('assets/gitar.jpg'), // Ganti dengan gambar produk
          ),
          Text('Gitar Akustik'), 
          SizedBox(height: 10,),// Ganti dengan nama produk
          Row(
            children: [
              Expanded(
                child: Text('Harga: Rp 1.000.000'), // Ganti dengan harga produk
              ),
              SizedBox(width: 10),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    // Fungsi tombol beli
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailProduk()),
                    );
                  },
                  child: Text('Beli'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(0, 30), // Atur ukuran tombol
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  },
)
          ],
        ),
      ),
    );
  }
}