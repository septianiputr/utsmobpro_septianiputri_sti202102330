import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'App Profil';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text(appTitle),
          backgroundColor: Colors.blueGrey,
        ),
        // #docregion addWidget
        body: const SingleChildScrollView(
          child: Column(
            children: [
              ImageSection(
                image: 'images/septi.jpg',
              ),
              TitleSection(
                name: 'Septiani Putri',
                location: 'Mahasiswa Aktif STMIK Widya Utama Purwokerto',
              ),
              ButtonSection(),
              TextSection(
                description:
                    'Saya adalah mahasiswa Teknik Informatika di STMIK Widya Utama Purwokerto.'
                    'Saya tertarik dan ingin terlibat dalam perkembangan teknologi informasi. '
                    'Saya juga seorang yang antusis dan memiliki minat yang kuat dalam memahami bagaimana teknologi informasi dapat meningkatkan efisiensi dan inovasi dalam berbagai bidang.'
              ),
              BiodataSection(),
            ],
          ),
        ),
        // #enddocregion addWidget
      ),
    );
  }
}

// Define a new BiodataSection widget
// class BiodataSection extends StatelessWidget {
//   const BiodataSection({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const Padding(
//       padding: EdgeInsets.all(16.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Biodata',
//             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//           ),
//           SizedBox(height: 10),
//           Text(
//             'Name: John Doe',
//             style: TextStyle(fontSize: 18),
//           ),
//           SizedBox(height: 5),
//           Text(
//             'Email: johndoe@example.com',
//             style: TextStyle(fontSize: 18),
//           ),
//           SizedBox(height: 5),
//           Text(
//             'Phone: +1 123-456-7890',
//             style: TextStyle(fontSize: 18),
//           ),
//           SizedBox(height: 10),
//           Text(
//             'Education:',
//             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//           ),
//           Text(
//             'BSc in Computer Science, ABC University',
//             style: TextStyle(fontSize: 18),
//           ),
//           SizedBox(height: 10),
//           Text(
//             'Experience:',
//             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//           ),
//           Text(
//             'Software Engineer at XYZ Company',
//             style: TextStyle(fontSize: 18),
//           ),
//         ],
//       ),
//     );
//   }
// }

class BiodataSection extends StatelessWidget {
  const BiodataSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Biodata:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          // Name section with icon
          Row(
            children: [
              Icon(
                Icons.person,
                size: 20,
                color: Colors.black,
              ),
              SizedBox(width: 8),
              Text(
                'Nama     : Septiani Putri',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ],
          ),

           SizedBox(height: 10),
          // Alamat section with icon
          Row(
            children: [
              Icon(Icons.location_on, size: 20),
              SizedBox(width: 8),
              Text(
                'Alamat   :',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          Text(
            'Candinata Rt23/Rw12, Kutasari, Purbalingga',
            style: TextStyle(fontSize: 16),
          ),


           SizedBox(height: 10),
          // TTL section with icon
          Row(
            children: [
              Icon(Icons.location_city, size: 20),
              SizedBox(width: 8),
              Text(
                'TTL         : Purbalingga, 15 Septmbr 2003',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),

          SizedBox(height: 10),
          // JK section with icon
          Row(
            children: [
              Icon(Icons.female, size: 20),
              SizedBox(width: 8),
              Text(
                'Jenis Kelamin : Perempuan',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),


          SizedBox(height: 5),
          // Email section with icon
          Row(
            children: [
              Icon(Icons.email, size: 20),
              SizedBox(width: 8),
              Text(
                'Email      : septianip2003@gmail.com',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ],
          ),

          SizedBox(height: 5),
          // Phone section with icon
          Row(
            children: [
              Icon(Icons.phone, size: 20),
              SizedBox(width: 8),
              Text(
                'No.Telp  : +62-813-8613-0271',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ],
          ),
          
         

          SizedBox(height: 10),
          // Education section with icon
          Row(
            children: [
              Icon(Icons.school, size: 20),
              SizedBox(width: 8),
              Text(
                'Education',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Text(
            'S1 Teknik Informatika, STMIK Widya Utama Purwokerto',
            style: TextStyle(fontSize: 16),
          ),

        ],
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
  });

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  location,
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          // #docregion Icon
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
        child: Container(
      color: Color.fromARGB(255, 48, 96, 136),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(
            color: Colors.black,
            icon: Icons.call,
            label: 'CALL',
          ),
          ButtonWithText(
            color: Colors.black,
            icon: Icons.near_me,
            label: 'ROUTE',
          ),
          ButtonWithText(
            color: Colors.black,
            icon: Icons.share,
            label: 'SHARE',
          ),
        ],
      ),
    ));
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(40.0),
        child: Container(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: color),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: color,
                ),
              ),
            ),
          ],
        )));
  }
}

class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}

// #docregion ImageSection
class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    // #docregion Image-asset
    return Image.asset(
      image,
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    );
    // #enddocregion Image-asset
  }
}
// #enddocregion ImageSection

// #docregion FavoriteWidget
class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}
// #enddocregion FavoriteWidget

// #docregion _FavoriteWidgetState, _FavoriteWidgetState-fields, _FavoriteWidgetState-build
class _FavoriteWidgetState extends State<FavoriteWidget> {
  // #enddocregion _FavoriteWidgetState-build
  bool _isFavorited = true;
  int _favoriteCount = 41;

  // #enddocregion _FavoriteWidgetState-fields

  // #docregion _toggleFavorite
  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }

  // #enddocregion _toggleFavorite

  // #docregion _FavoriteWidgetState-build
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            padding: const EdgeInsets.all(0),
            alignment: Alignment.center,
            icon: (_isFavorited
                ? const Icon(Icons.star)
                : const Icon(Icons.star_border)),
            color: Colors.red[500],
            onPressed: _toggleFavorite,
          ),
        ),
        SizedBox(
          width: 18,
          child: SizedBox(
            child: Text('$_favoriteCount'),
          ),
        ),
      ],
    );
  }
// #docregion _FavoriteWidgetState-fields
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Biodata App'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nama       : Sri Mulyaningsih',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Contact    : srimullyaningsih@gmail.com',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Phone      : +62-812-2761-6029',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'Education  :',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'S1 Teknik Informatika, Teknik Informatika',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'Experience:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Software Engineer at XYZ Company',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}