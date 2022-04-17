import 'package:negara_g20/models/models.dart';

class CountryData {
  static final _nationalCountry = [
    "Indonesia",
    "Amerika Serikat",
    "India",
    "China",
    "Rusia",
    "Jepang",
    "Italia",
    "Jerman",
    "Turki",
    "Arab Saudi"
  ];

  static final _countryflag = [
    "image/indonesia.png",
    "image/amerika.png",
    "image/india.png",
    "image/china.png",
    "image/rusia.png",
    "image/jepang.png",
    "image/italia.png",
    "image/jerman.png",
    "image/turki.png",
    "image/arab.png"
  ];

  static final _capitalCountry = [
    'Jakarta',
    'Washington, D.C',
    'New Delhi',
    'Tiongkok',
    'Moskow',
    'Tokyo',
    'Roma',
    'Berlin',
    'Angkara',
    'Riyadh'
  ];

  static final _countryDetail = [
    "Indonesia adalah presiden G20 periode 2022, Indonesia, disebut juga dengan Negara Kesatuan Republik Indonesia atau hanya Republik Indonesia adalah sebuah negara di Asia Tenggara yang dilintasi garis khatulistiwa dan berada di antara daratan benua Asia dan Oseania, serta antara Samudra Pasifik dan Samudra Hindia.",
    "Amerika Serikat, disingkat dengan AS, atau secara umum dikenal dengan Amerika saja, adalah sebuah negara republik konstitusional federal yang terdiri dari lima puluh negara bagian dan sebuah distrik federal, anggota G20",
    "India atau इंडिया, dengan nama resmi Republik India Hindi: भारत गणराज्य; pengucapan bahasa Hindi, diromanisasikan menjadi Bhārat Gaṇarājya adalah sebuah negara di Asia dengan jumlah penduduk terbanyak kedua di dunia, dengan populasi lebih dari satu miliar jiwa, dan adalah negara terbesar ketujuh berdasarkan ukuran ...",
    "Tiongkok, atau nama lengkapnya Republik Rakyat Tiongkok atau Republik Rakyat China (Hanzi sederhana: 中华人民共和国; Hanzi tradisional: 中華人民共和國; Pinyin: Zhōnghuá Rénmín Gònghéguó; harfiah: 'Republik Rakyat Tionghoa', disingkat RRT, RRC) atau secara umum lebih dikenal dengan nama Tiongkok atau Cina saja adalah sebuah negara yang terletak di Asia Timur yang beribu kota di Beijing[18] Negara ini memiliki jumlah penduduk terbanyak di dunia (sekitar 1,4 miliar jiwa, mayoritas merupakan suku Han) dan luas daratan 9,59 juta kilometer persegi, menjadikannya negara ke-3 terbesar di dunia.",
    "Rusia adalah negara terluas di dunia. Wilayahnya mencakup seperdelapan luas daratan bumi,[13][14][15] penduduknya menduduki peringkat kesembilan terbanyak di dunia dengan jumlah sekitar 146 juta jiwa (Maret 2016).",
    "Jepang adalah sebuah negara kepulauan di Asia Timur. Letaknya di ujung barat Samudra Pasifik, di sebelah timur Laut Jepang, dan bertetangga dengan Tiongkok, Korea Selatan, dan Rusia.",
    "Italia, resminya Republik Italia, adalah sebuah negara kesatuan republik parlementer di Eropa Terletak di jantung Laut Mediterania. Italia berbatasan dengan Prancis, Swiss, Austria, Slovenia, San Marino dan Vatikan. Italia mencakup area seluas 301.338 km², dan dipengaruhi oleh iklim sedang dan iklim mediterania.",
    "Jerman, secara resmi disebut sebagai Republik Federal Jerman adalah negara berbentuk federasi di Eropa. Negara ini memiliki posisi ekonomi dan politik yang sangat penting di Eropa maupun di dunia.",
    "Republik Turki, juga hanya disebut sebagai Turki, adalah sebuah negara di kawasan Eurasia. Wilayahnya terbentang dari Semenanjung Anatolia di Asia Barat Laut hingga daerah Balkan di Eropa Tenggara.",
    "Arab Saudi / Saudi Arabia, secara resmi dikenal sebagai Kerajaan Arab Saudi atau Kingdom of Saudi Arabia, adalah sebuah negara Arab di Asia Barat yang mencakup hampir keseluruhan wilayah Semenanjung Arabia.",
  ];

  static List<Country> listData = (() {
    return Iterable.generate(_nationalCountry.length).map((index) {
      return Country(
          title: _nationalCountry[index],
          detail: _countryDetail[index],
          // capital: _capitalCountry[index],
          flag: _countryflag[index]);
    }).toList();
  })();
}
