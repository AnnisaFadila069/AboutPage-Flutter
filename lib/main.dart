import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'About Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AboutPage(),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, 
      appBar: AppBar(
        title: Text(
          'Tentang Saya', style: TextStyle(color: Colors.white),
          ),
        backgroundColor: Color(0xFF1A237E),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Bagian Foto Diri 
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage(
                  'Images/gambar-diri.png', 
                ),
              ),
              SizedBox(height: 16),

              // Bagian Nama
              Text(
                'Annisa Fadila Rahmawati', 
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1A237E),
                ),
              ),
              SizedBox(height: 2),

              // Penjelasan tambahan
              Text(
                'Mahasiswi Sistem Informasi ITS', 
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(height: 8),

              // Bagian Nomor Induk
              Text(
                'NRP: 5026221069',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(height: 8),

              // Bagian Fun Fact
              Text(
                'Fun Fact: Susah Gemuk', 
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 32),

              // Koleksi Hobi
              Text(
                'Hobi',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1A237E),
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildHobbyItem('Bermain Kalimba',
                      'Images/kalimba.png'), // Ganti dengan path gambar lokal
                  _buildHobbyItem('Menonton Film/Drama',
                      'Images/nonton.png'), // Ganti dengan path gambar lokal
                ],
              ),
              SizedBox(height: 32),

              // Bagian Asal=
              Text(
                'Asal',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1A237E),
                ),
              ),
              SizedBox(height: 16),
              Center(
                child: Image.asset(
                  'Images/temanggung.png',
                  width: double.infinity, // Lebar gambar mengikuti lebar layar
                  fit: BoxFit.cover, // Gambar akan terpotong sesuai proporsi
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Temanggung, Jawa Tengah',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF3D53B8),
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Kota Tembakau dengan Kesejukan yang terletak di antara 2 gunung Sumbing dan Sindoro',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[700],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 32),

              // Bagian Sosial Media
              Text(
                'Akun Sosial Media',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1A237E),
                ),
              ),
              SizedBox(height: 1),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSocialMediaItem(
                    'Instagram',
                    'annisafadila_r',
                    Icons.camera_alt,
                  ),
                  _buildSocialMediaItem(
                    'LinkedIn',
                    'Annisa Fadila Rahmawati',
                    Icons.business,
                  ),
                  _buildSocialMediaItem(
                    'ID Line',
                    'iniafr273', // Ganti dengan ID Line Anda
                    Icons.chat,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Fungsi widget untuk menampilkan hobi
  Widget _buildHobbyItem(String title, String imageUrl) {
    return Column(
      children: [
        Image.asset(
          imageUrl,
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 8),
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            color: Color(0xFF3D53B8),
          ),
        ),
      ],
    );
  }

  // Fungsi widget untuk menampilkan akun sosial media
  Widget _buildSocialMediaItem(
      String platform, String username, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(
            icon,
            size: 30,
            color: Color(0xFF3A55D3),
          ),
          SizedBox(width: 16),
          Text(
            '$platform: $username',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[700],
            ),
          ),
        ],
      ),
    );
  }
}
