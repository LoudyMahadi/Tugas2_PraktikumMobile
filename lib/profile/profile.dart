import 'package:flutter/material.dart';
import 'package:tugas2/login/login_pages.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends StatefulWidget {
  final String username;
  const ProfilePage({super.key, required this.username});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Page"),
        backgroundColor:const Color.fromARGB(255, 17, 27, 51),
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  width: double.infinity, // Tambahkan properti ini untuk membuat kotak menyesuaikan halaman
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(
                    "Hai ${widget.username}",
                    style: const TextStyle(fontSize: 24),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 50), // Tambahkan ruang kosong di atas tombol
                  ElevatedButton(
                    onPressed: () async {
                      const url = 'instagram.com/loudysuryaa'; // Ganti dengan link yang diinginkan
                      if (await canLaunchUrl(url as Uri)) {
                        await launchUrl(url as Uri);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: const Text("About App"),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(context,
                          MaterialPageRoute(builder: (context) {
                        return LoginPages();
                      }), (route) => false);
                    },
                    child: const Text("Logout"),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}