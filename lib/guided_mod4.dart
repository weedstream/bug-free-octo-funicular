import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Berita());
}

class Berita extends StatelessWidget {
  const Berita({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ini Berita Lho'),
        ),
        body: Padding(
          padding: EdgeInsets.all(0.0),
          child: ListView(
            children: [
              buildCard(
                'Anies Sebut Jokowi Akan Kumpulkan Aparat untuk Jamin Netralitas di Pemilu',
                'Senin, 30 Okt 2023 14:17 WIB',
                'https://akcdn.detik.net.id/community/media/visual/2023/10/30/jokowi-makan-siang-bareng-anies-ganjar-prabowo-marlinda-detikcom_169.jpeg?w=700&q=90',
                'Bakal capres Anies Baswedan mengungkap isi pembicaraan saat makan siang bersama Presiden Joko Widodo (Jokowi) serta bakal capres Prabowo Subianto dan Ganjar Pranowo. Anies mengatakan salah satu pembahasan ialah soal netralitas aparat saat Pemilu 2024.',
              ),
              buildCard2(
                'Hakim Konstitusi soal Masinton PDIP Usul Hak Angket MK: Jangan Dibuat-buat',
                'Rabu, 01 Nov 2023 19:32 WIB',
                'https://akcdn.detik.net.id/community/media/visual/2015/04/28/7fc81296-11ff-4cdb-9b61-94843d520d8b_169.jpg?w=700&q=90',
                'Hakim Konstitusi Manahan Sitompul menanggapi usulan anggota DPR Fraksi PDIP Masinton Pasaribu soal hak angket terhadap Mahkamah Konstitusi (MK). Manahan mengatakan hak angket itu harus sesuai dengan prosedurnya dan jangan dibuat-buat. Diketahui, soal hak angket ini juga direspons Majelis Kehormatan Mahkamah Konstitusi (MKMK). Ketua MKMK Jimly Asshiddiqie mendorong hak angket itu agar DPR menjalankan fungsi pengawasannya.',
              ),
              buildCard3(
                'Johnny G Plate Dituding Pengecut Hingga Merasa Dizalimi',
                'Kamis, 02 Nov 2023 07:21 WIB',
                'https://akcdn.detik.net.id/community/media/visual/2023/10/25/johnny-g-plate-dituntut-15-tahun-penjara-7.jpeg?w=700&q=90',
                'Mantan Direktur Utama Badan Aksesibilitas Telekomunikasi dan Informasi (Bakti) Kominfo, Anang Achmad Latif, kemarin juga membacakan nota pembelaan atas tuntutan 18 tahun penjara di kasus korupsi proyek BTS. Anang pun kesal kepada mantan Menkominfo Johnny G Plate. Johnny Plate tegas mengklaim tidak bersalah dan juga ia menyinggung soal penetapan tersangka dirinya karena politik. "Meskipun fakta fakta persidangan telah menunjukkan dengan jelas dan tegas ketidakbersalahan saya dan saya juga meyakini, majelis hakim yang mulia sudah mengetahui secara komprehensif duduk perkaranya," katanya.',
              ),
              buildCard4(
                'MKMK Sebut Sudah Kantongi Bukti Lengkap Dugaan Pelanggaran Etik Hakim MK',
                'Rabu, 01 Nov 2023 23:39 WIB',
                'https://akcdn.detik.net.id/community/media/visual/2023/10/31/ketua-mkmk-jimly-asshiddiqie-mengaku-menerima-banyak-laporan-masalah-yang-dihadapi-dalam-perkara-dugaan-pelanggaran-etik-oleh-_169.jpeg?w=700&q=90',
                'Majelis Kehormatan Mahkamah Konstitusi (MKMK) sudah memeriksa 6 hakim konstitusi terkait dugaan pelanggaran etik. MKMK menyebut pihaknya sudah mengantongi bukti lengkap. Jimly mengatakan masih banyak masalah internal di MK yang perlu dibenahi. Dia berharap para hakim konstitusi memiliki independensi.',
              ),
              buildCard5(
                'Pesan Legislator Demokrat ke Calon Panglima TNI: Pemilu Netral-Keamanan Papua',
                'Kamis, 02 Nov 2023 07:13 WIB',
                'https://akcdn.detik.net.id/community/media/visual/2021/10/15/anggota-komisi-i-fraksi-partai-demokrat-rizki-natakusumah_169.jpeg?w=700&q=90',
                'Anggota Komisi I DPR RI dari Fraksi Partai Demokrat (PD) Rizki Natakusumah memiliki pesan khusus untuk calon Panglima TNI Jenderal Agus Subiyanto. Dia berpesan agar Agus menjaga Pemilu 2024 berjalan netral hingga keamanan Papua. Dia menyebut Jenderal Agus harus menjaga kehormatannya TNI dalam tugas mengamankan Pemilu 2024 agar berjalan netral dan objektif.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Card buildCard(String tittle, String date, String img, String desc){
  return Card(
    child: Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            tittle, 
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            date,
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
          ),
          Image.network(img),
          Text(
            desc, 
            style: TextStyle(fontSize: 12),
            textAlign: TextAlign.justify,
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(onPressed: (){}, child: Text('Share')),
              TextButton(onPressed: (){}, child: Text('More')),
            ],
          ),
        ],
      ),
    ),
  );
}
Card buildCard2(String tittle, String date, String img, String desc){
  return Card(
    child: Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            tittle, 
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            date,
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
          ),
          Image.network(img),
          Text(
            desc, 
            style: TextStyle(fontSize: 12),
            textAlign: TextAlign.justify,
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(onPressed: (){}, child: Text('Share')),
              TextButton(onPressed: (){}, child: Text('More')),
            ],
          ),
        ],
      ),
    ),
  );
}
Card buildCard3(String tittle, String date, String img, String desc){
  return Card(
    child: Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            tittle, 
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            date,
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
          ),
          Image.network(img),
          Text(
            desc, 
            style: TextStyle(fontSize: 12),
            textAlign: TextAlign.justify,
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(onPressed: (){}, child: Text('Share')),
              TextButton(onPressed: (){}, child: Text('More')),
            ],
          ),
        ],
      ),
    ),
  );
}
Card buildCard4(String tittle, String date, String img, String desc){
  return Card(
    child: Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            tittle, 
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            date,
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
          ),
          Image.network(img),
          Text(
            desc, 
            style: TextStyle(fontSize: 12),
            textAlign: TextAlign.justify,
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(onPressed: (){}, child: Text('Share')),
              TextButton(onPressed: (){}, child: Text('More')),
            ],
          ),
        ],
      ),
    ),
  );
}
Card buildCard5(String tittle, String date, String img, String desc){
  return Card(
    child: Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            tittle, 
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            date,
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
          ),
          Image.network(img),
          Text(
            desc, 
            style: TextStyle(fontSize: 12),
            textAlign: TextAlign.justify,
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(onPressed: (){}, child: Text('Share')),
              TextButton(onPressed: (){}, child: Text('More')),
            ],
          ),
        ],
      ),
    ),
  );
}
