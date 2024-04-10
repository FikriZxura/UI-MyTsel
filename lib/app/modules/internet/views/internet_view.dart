import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_tsel/app/modules/home/widgets/infoPaket_item.dart';
import 'package:my_tsel/app/widget/color.dart';

import '../controllers/internet_controller.dart';
import '../widgets/kategoriInternet_items.dart';
import '../widgets/langganan_items.dart';

class InternetView extends GetView<InternetController> {
  const InternetView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Paket Internet',
          style: GoogleFonts.dmSans(
            color: hitam,
          ),
        ),
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(
              Icons.arrow_back_ios_rounded,
              color: hitam,
            )),
      ),
      body: ListView(
        children: [
          // * Search
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffF1F2F6),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                autocorrect: false,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search_rounded),
                  border: InputBorder.none,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 32, vertical: 20),
                  hintText: "Cari paket favorit kamu ...",
                ),
              ),
            ),
          ),

          // * Banners
          SizedBox(
            height: 6,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  InfoPaket(
                      gradient: merahpink,
                      title: "Internet OMG!",
                      description: "Bisa YouTube\ndan Sosmed",
                      path: "assets/images/banner1_it.png"),
                  InfoPaket(
                      gradient: biruUngu,
                      title: "Internet OMG!",
                      description: "Bisa YouTube\ndan Sosmed",
                      path: "assets/images/banner2_it.png"),
                ],
              ),
            ),
          ),

          // * Langganan Kamu & Items
          SizedBox(
            height: 32,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Langganan Kamu",
                  style: GoogleFonts.dmSans(
                      color: hitam, fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      // * ITEMS
                      LanggananItems(
                          giga: "100GB",
                          potongan: "Rp.995.000",
                          label: "Internet OMG!",
                          price: "Rp.885.000"),
                      LanggananItems(
                          giga: "14GB",
                          potongan: " ",
                          label: "Internet OMG!",
                          price: "Rp.85.000"),
                    ],
                  ),
                )
              ],
            ),
          ),

          // * Kategori & Items
          SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // * Kategori & lihat semua
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Kategori",
                      style: GoogleFonts.dmSans(
                        color: hitam,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Text(
                        "Lihat Semua",
                        style: GoogleFonts.dmSans(
                          color: merahMuda,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                //* Items
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          KategoriInternet(title: "MyTelkomsel Reward"),
                          KategoriInternet(title: "MyTelkomsel Reward"),
                          KategoriInternet(title: "MyTelkomsel Reward"),
                          KategoriInternet(title: "MyTelkomsel Reward"),
                        ],
                      ),
                      Row(
                        children: [
                          KategoriInternet(title: "MyTelkomsel Reward"),
                          KategoriInternet(title: "MyTelkomsel Reward"),
                          KategoriInternet(title: "MyTelkomsel Reward"),
                          KategoriInternet(title: "MyTelkomsel Reward"),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),

          // * POPULAR & Items
          SizedBox(
            height: 32,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Popular",
                  style: GoogleFonts.dmSans(
                      color: hitam, fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      // * ITEMS
                      LanggananItems(
                          giga: "100GB",
                          potongan: "Rp.995.000",
                          label: "Internet OMG!",
                          price: "Rp.885.000"),
                      LanggananItems(
                          giga: "14GB",
                          potongan: " ",
                          label: "Internet OMG!",
                          price: "Rp.85.000"),
                    ],
                  ),
                )
              ],
            ),
          ),

          // * Belajar #dirumahaja & Items
          SizedBox(
            height: 32,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Belajar #dirumahaja",
                  style: GoogleFonts.dmSans(
                      color: hitam, fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      // * ITEMS
                      LanggananItems(
                          giga: "100GB",
                          potongan: " ",
                          label: "Ruang Guru",
                          price: "Free"),
                      LanggananItems(
                          giga: "100GB",
                          potongan: " ",
                          label: "Ruang Guru",
                          price: "Free"),
                      LanggananItems(
                          giga: "100GB",
                          potongan: " ",
                          label: "Ruang Guru",
                          price: "Free"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
