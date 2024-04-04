import 'package:flutter/material.dart';
import 'package:uts/detail_prodi.dart';
import 'package:uts/detail_profil.dart';
import 'package:uts/profil.dart';
import 'prodi.dart';

void main() {
  runApp(const ProfilApp());
}

class ProfilApp extends StatelessWidget {
  const ProfilApp({Key? key}) : super(key: key);

  static const MaterialColor white = MaterialColor(
    0xFFFFFFFF,
    <int, Color>{
      50: Color(0xFFFFFFFF),
      100: Color(0xFFFFFFFF),
      200: Color(0xFFFFFFFF),
      300: Color(0xFFFFFFFF),
      400: Color(0xFFFFFFFF),
      500: Color(0xFFFFFFFF),
      600: Color(0xFFFFFFFF),
      700: Color(0xFFFFFFFF),
      800: Color(0xFFFFFFFF),
      900: Color(0xFFFFFFFF),
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil Fakultas Pertanian UPN',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: white,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Profil Fakultas Pertanian UPN',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 209, 255, 234),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  'assets/replic2-1024x768.png',
                  fit: BoxFit.cover,
                ),
              ),
              SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Text(
                            'Fakultas Pertanian UPN "Veteran" Jawa Timur',
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Fakultas Pertanian saat ini  memiliki 2 program studi jenjang S-1, yaitu Agroteknologi dan Agribisnis, 2 program studi jenjang S-2 yaitu Magister Agribisnis dan Magister Agroteknologi, serta satu program studi S-3 yaitu program Doktor Agribisnis. Tahun 2015 sudah diusulkan ke Kementerian Riset Teknologi dan Pendidikan Tinggi untuk program Master (S2) Agroteknologi dan program Doktor (S3) Ilmu Pertanian. Berkat kerja keras dalam menjaga kualitas SDM, proses manajemen dan lulusannya, program studi S-1 mendapatkan akreditasi A / unggul. Program studi S-2 Agribisnis mendapatkan akreditasi A / unggul, S-2 Agroteknologi dan S-3 Agribisnis mendapatkan akreditasi baik dari BANPT-DIKTI.',
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                        ],
                      ),
                    ),
                    ListView.builder(
                      padding: const EdgeInsets.all(4.0),
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: Prodi.samples.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return ProdiDetail(
                                        prodi: Prodi.samples[index]);
                                  },
                                ),
                              );
                            },
                            child: buildProdiCard(Prodi.samples[index]),
                          ),
                        );
                      },
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text(
                            'Profil Developer',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 200,
                      alignment: Alignment.center,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: Profil.samples.length,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return ProfilDetail(
                                      profil: Profil.samples[index]);
                                }),
                              );
                            },
                            child: buildProfilCard(Profil.samples[index]),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildProdiCard(Prodi prodi) {
    return Card(
      color: const Color.fromARGB(255, 209, 255, 234),
      elevation: 2.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Column(
          children: [
            Image(image: AssetImage(prodi.imageUrl)),
            const SizedBox(
              height: 5.0,
            ),
            Text(
              prodi.akreditasi,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildProfilCard(Profil profil) {
  return SizedBox(
    width: 200,
    height: 250,
    child: Card(
      color: const Color.fromARGB(255, 209, 255, 234),
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(profil.imageUrl),
            ),
            const SizedBox(height: 10.0),
            Text(
              profil.nama,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Palationo',
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    ),
  );
}
