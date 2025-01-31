import 'package:flutter/material.dart';
import 'package:galeryseni/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    GridGallery(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepPurple,
        onTap: _onItemTapped,
      ),
    );
  }
}

class GridGallery extends StatelessWidget {
  final List<String> imagePaths = [
    'img/5d5276ef2ac7f.jpg',
    'img/IMG_20230430_105922.jpg',
    'img/pantai-pok-tunggal.jpg',
  ];

  final List<String> descriptions = [
    '(Gambar 1) Embung Nglanggeran adalah salah satu tempat wisata yang paling populer di kawasan Desa Nglanggeran, Gunung Kidul.',
    '(Gambar 2) Suasana di daerah Bawen, terdapat bus menuju wisata dan ada terminal bawen.',
    '(Gambar 3) Pantai Pok Tunggal adalah salah satu tempat wisata yang paling ramai di Gunung Kidul, Cocok bagi yang tidak mau atau tidak bisa berjalan terlalu jauh untuk sampai di tepi pantai.',
  ];

  GridGallery({super.key});

  void _showImageDialog(
      BuildContext context, String imagePath, String description) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(imagePath, fit: BoxFit.cover),
            SizedBox(height: 10),
            Text(description,
                textAlign: TextAlign.center, style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemCount: imagePaths.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => _showImageDialog(
                  context, imagePaths[index], descriptions[index]),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  imagePaths[index],
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
