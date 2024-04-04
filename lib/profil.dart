class Profil {
  String imageUrl;
  String nama;
  String ttl;
  String alamat;
  String telp;
  String email;
  String github;
  List<String> pendidikan;
  List<String> penghargaan;

  Profil(this.imageUrl, this.nama, this.ttl, this.alamat, this.telp, this.email,
      this.github, this.pendidikan, this.penghargaan);

  static List<Profil> samples = [
    Profil(
      'assets/javas.jpg',
      'Javas Aryadinata',
      'Surabaya, 24 Maret 2004',
      'Sidoarjo, Buduran, Jawa Timur',
      '089697557919',
      '22082010057@student.upnjatim.ac.id',
      'https://github.com/Javas24',
      [
        'SMPN 5 Sidoarjo',
        'SMKN 2 Buduran',
        'UPN "Veteran" Jawa Timur',
      ],
      [
        'Juara 2 Architecture Photography Competition',
        'Film Terbaik Festival Film ISBI'
      ],
    ),
    Profil(
      'assets/nisa.jpg',
      'Shania Chairunnisa Santoso',
      'Ende, 28 Juni 2004',
      'Jalan Jemur Andayani',
      '081353659914',
      '22082010062@student.upnjatim.ac.id',
      'https://github.com/shaniach',
      [
        'SMPN 1 Ende',
        'SMAN 1 Ende',
        'UPN "Veteran" Jawa Timur',
      ],
      [
        'Finalis OSN Kimia Tingkat Provinsi',
        'Juara 1 Basket Putri Tingkat SMP',
      ],
    ),
  ];
}
