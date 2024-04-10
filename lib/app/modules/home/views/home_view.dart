import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_tsel/app/routes/app_pages.dart';
import 'package:my_tsel/app/widget/color.dart';

import '../controllers/home_controller.dart';
import '../widgets/cardCovid_item.dart';
import '../widgets/cardLink_item.dart';
import '../widgets/cardVoucher_item.dart';
import '../widgets/clipPath_Info.dart';
import '../widgets/clipPath_backgroun.dart';
import '../widgets/infoInternet_item.dart';
import '../widgets/infoPaket_item.dart';
import '../widgets/kategoriPaket_item.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: merahMuda,
        elevation: 0,
        title: RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: "Hai, ",
                style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w500, fontSize: 18),
              ),
              TextSpan(
                text: "ZXURA",
                style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.bold, fontSize: 18),
              )
            ],
          ),
        ),
        centerTitle: false,
        actions: [
          InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(100),
            child: Container(
              child: Image.asset("assets/images/qr_ic.png"),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          // * CARD PROFILE
          Stack(
            children: [
              // * background merah melengkung
              ClipPath(
                clipper: clipPathClass(),
                child: Container(
                  width: Get.width,
                  height: 200,
                  color: merahMuda,
                ),
              ),

              // * bagian Card dan ITEMS
              Container(
                child: Column(
                  children: [
                    Column(
                      children: [
                        // * CARD
                        ClipPath(
                          clipper: ClipInfoClass(),
                          child: Container(
                            padding: EdgeInsets.all(20),
                            margin: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 8,
                                  offset: Offset(
                                    1,
                                    1,
                                  ),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xffE52D27),
                                  Color(0xffB31217),
                                ],
                              ),
                            ),
                            // * CARDs
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // * NoHP & image
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "081290112333",
                                      style: GoogleFonts.dmSans(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Image.asset("assets/images/simpati.png")
                                  ],
                                ),
                                SizedBox(
                                  height: 21,
                                ),
                                // * Sisa Pulsa
                                Text(
                                  "Sisa Pulsa Anda",
                                  style: GoogleFonts.dmSans(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                // * 34.000 & button
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Rp34.000",
                                      style: GoogleFonts.dmSans(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      borderRadius: BorderRadius.circular(5),
                                      child: Ink(
                                        child: Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: kuning,
                                          ),
                                          child: Text(
                                            "Isi Pulsa",
                                            style: GoogleFonts.dmSans(
                                              color: hitam,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Divider(
                                  color: hitam,
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                // * Berlaku sampai
                                RichText(
                                  text: TextSpan(
                                    text: "Berlaku sampai",
                                    style: GoogleFonts.dmSans(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: " 19 April 2020",
                                        style: GoogleFonts.dmSans(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                // * Telkomsel poin & 172
                                Row(
                                  children: [
                                    Text(
                                      "Telkomsel POIN",
                                      style: GoogleFonts.dmSans(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: kuning,
                                      ),
                                      child: Text("172"),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        // * Section 2
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ItemPaket(
                                  title: "Internet",
                                  subtitle: "12.19",
                                  ket: " GB"),
                              ItemPaket(
                                  title: "Telpon", subtitle: "0", ket: " Min"),
                              ItemPaket(
                                  title: "SMS", subtitle: "23", ket: " Sms"),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    // * Garis tengah
                    Container(
                      height: 7,
                      color: Color(0xffF1F2F6),
                    ),
                  ],
                ),
              ),
            ],
          ),

          // * KATEGORI PAKET
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Kategori Paket",
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    KategorPaket(
                      path: "assets/images/internet_ic.png",
                      title: "Internet",
                      ontap: () {
                        Get.toNamed(Routes.INTERNET);
                      },
                    ),
                    KategorPaket(
                        path: "assets/images/telpon_ic.png", title: "Telpon"),
                    KategorPaket(
                        path: "assets/images/sms_ic.png", title: "Sms"),
                    KategorPaket(
                        path: "assets/images/roaming_ic.png", title: "Roaming"),
                  ],
                ),
                SizedBox(
                  height: 23,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    KategorPaket(
                        path: "assets/images/hiburan_ic.png", title: "Hiburan"),
                    KategorPaket(
                        path: "assets/images/unggulan_ic.png",
                        title: "Unggulan"),
                    KategorPaket(
                        path: "assets/images/tersimpan_ic.png",
                        title: "Tersimpan"),
                    KategorPaket(
                        path: "assets/images/riwayat_ic.png", title: "Riwayat"),
                  ],
                ),
              ],
            ),
          ),

          // * Terbaru dari Telkomsel & Lihat Semua
          SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Terbaru dari Telkomsel",
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "Lihat Semua",
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.bold,
                    color: merahMuda,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),

          // * Banner Terbaru
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  InfoPaket(
                      path: "assets/images/banner1_it.png",
                      gradient: merahpink,
                      title: "Internet OMG!",
                      description: "Bisa Youtube"),
                  InfoPaket(
                      path: "assets/images/banner2_it.png",
                      gradient: biruUngu,
                      title: "Internet OMG!",
                      description: "Bisa Youtube"),
                  InfoPaket(
                      path: "assets/images/banner1_it.png",
                      gradient: merahpink,
                      title: "Internet OMG!",
                      description: "Bisa Youtube"),
                  InfoPaket(
                      path: "assets/images/banner2_it.png",
                      gradient: biruUngu,
                      title: "Internet OMG!",
                      description: "Bisa Youtube"),
                ],
              ),
            ),
          ),

          // * Tanggap COVID-19 & Card Items
          SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Tanggap COVID-19",
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                // * Item covid
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CardCovid(
                        path: "assets/images/covidBanner.png",
                        title: "Diskon Spesial 25% Untuk\nPelanggan Baru",
                      ),
                      CardCovid(
                        path: "assets/images/covidBanner.png",
                        title: "Diskon Spesial 25% Untuk\nPelanggan Baru",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // * AYO! Pake LinkAja! & Card Items
          SizedBox(height: 22),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "AYO! Pake LinkAja!",
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "Pakai LinkAja untuk beli pulsa, beli paket data dan bayar tagihan lebih mudah.",
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                // * Item Link
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      LinkCard(
                        path: "assets/images/linkbanner.png",
                      ),
                      LinkCard(
                        path: "assets/images/linkbanner2.png",
                      ),
                      LinkCard(
                        path: "assets/images/linkbanner.png",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // * Cari Voucher, Yuk! & Lihat semua
          SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // * Text
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Cari Voucher, Yuk!",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Text(
                        "Lihat Semua",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          color: merahMuda,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),

                // * CARD
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CardVoucher(),
                      CardVoucher(),
                    ],
                  ),
                )
              ],
            ),
          ),

          // * Penawaran Khusus & Items
          SizedBox(height: 32),

          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // * Text
                    Text(
                      "Penawaran Khusus",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Text(
                        "Lihat Semua",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          color: merahMuda,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 15, top: 20, bottom: 20),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                spreadRadius: 1,
                                blurRadius: 8,
                                offset: Offset(1, 1),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(7),
                            color: Color.fromARGB(255, 255, 255, 255)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/penawaran.png",
                            ),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                "Terus Belajar dari Rumahmu\ndengan Ruangguru!",
                                style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 15, top: 20, bottom: 20),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                spreadRadius: 1,
                                blurRadius: 8,
                                offset: Offset(1, 1),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(7),
                            color: Color.fromARGB(255, 255, 255, 255)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/penawaran.png",
                            ),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                "Terus Belajar dari Rumahmu\ndengan Ruangguru!",
                                style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: ConvexAppBar(
        activeColor: merahMuda,
        style: TabStyle.fixed,
        color: hitam,
        backgroundColor: Colors.white,
        items: [
          TabItem(icon: Icons.home, title: 'Beranda'),
          TabItem(icon: Icons.timer_outlined, title: 'Riwayat'),
          TabItem(icon: Icons.help_outline_outlined, title: 'Bantuan'),
          TabItem(icon: Icons.message, title: 'Inbox'),
          TabItem(icon: Icons.person, title: 'Profil'),
        ],
        onTap: (int i) => print('click index=$i'),
      ),
    );
  }
}
