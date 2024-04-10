import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
// import 'package:my_tsel/app/routes/app_pages.dart';
import 'package:my_tsel/app/widget/color.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          SizedBox(
            height: 60,
          ),
          // * IMAGE
          Container(
            alignment: Alignment.centerLeft,
            height: 133,
            // color: Colors.amber,
            child: Image.asset(
              "assets/images/person.png",
              // width: 20,
            ),
          ),
          SizedBox(height: 46),
          // * TITLE
          Text(
            "Silahkan masuk dengan nomor\ntelkomsel kamu",
            style: GoogleFonts.dmSans(
                fontWeight: FontWeight.bold, fontSize: 18, color: hitam),
          ),
          SizedBox(height: 24),

          // * NO HP
          Text(
            "Nomor HP",
            style: GoogleFonts.dmSans(
                fontWeight: FontWeight.bold, fontSize: 14, color: hitam),
          ),
          SizedBox(height: 8),

          // * TEXT FIELD
          TextField(
            controller: controller.phoneC,
            autocorrect: false,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Cth. 08129011xxxx",
            ),
          ),
          SizedBox(height: 16),

          // * CHECK BOX & SYARAT
          Row(
            children: [
              Obx(
                () => Checkbox(
                  activeColor: merahMuda,
                  value: controller.check.value,
                  onChanged: (value) => controller.check.toggle(),
                ),
              ),
              Expanded(
                child: RichText(
                  text: TextSpan(
                    text: "Saya menyetujui ",
                    style: GoogleFonts.dmSans(
                      color: hitam,
                      fontSize: 14,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.defaultDialog(
                              textConfirm: "CONFIRM",
                              onConfirm: () {
                                Get.back();
                              },
                              title: "",
                              content: Align(
                                alignment: Alignment.centerLeft,
                                child: Column(
                                  children: [
                                    Text(
                                        "Ketentuan Penggunaan:\nDetail tentang ketentuan penggunaan yang harus diikuti oleh pengguna aplikasi.\n"),
                                    Text(
                                        "Ketentuan Penggunaan:\nDetail tentang ketentuan penggunaan yang harus diikuti oleh pengguna aplikasi.\n"),
                                    Text(
                                        "Peraturan Umum:\nInformasi tentang peraturan umum yang berlaku saat menggunakan aplikasi.\n"),
                                    Text(
                                        "Kebijakan Privasi:\nPenjelasan tentang kebijakan privasi yang mengatur penggunaan data pribadi oleh aplikasi."),
                                  ],
                                ),
                              ),
                            );
                          },
                        text: "syarat",
                        style: GoogleFonts.dmSans(
                          color: merahMuda,
                        ),
                      ),
                      TextSpan(text: ", "),
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.defaultDialog(
                              textConfirm: "CONFIRM",
                              onConfirm: () {
                                Get.back();
                              },
                              title: "",
                              content: Align(
                                alignment: Alignment.centerLeft,
                                child: Column(
                                  children: [
                                    Text(
                                        "Ketentuan Penggunaan:\nDetail tentang ketentuan penggunaan yang harus diikuti oleh pengguna aplikasi.\n"),
                                    Text(
                                        "Ketentuan Penggunaan:\nDetail tentang ketentuan penggunaan yang harus diikuti oleh pengguna aplikasi.\n"),
                                    Text(
                                        "Peraturan Umum:\nInformasi tentang peraturan umum yang berlaku saat menggunakan aplikasi.\n"),
                                    Text(
                                        "Kebijakan Privasi:\nPenjelasan tentang kebijakan privasi yang mengatur penggunaan data pribadi oleh aplikasi."),
                                  ],
                                ),
                              ),
                            );
                          },
                        text: "ketentuan",
                        style: GoogleFonts.dmSans(
                          color: merahMuda,
                        ),
                      ),
                      TextSpan(text: ", "),
                      TextSpan(text: "dan "),
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.defaultDialog(
                              textConfirm: "CONFIRM",
                              onConfirm: () {
                                Get.back();
                              },
                              title: "",
                              content: Align(
                                alignment: Alignment.centerLeft,
                                child: Column(
                                  children: [
                                    Text(
                                        "Ketentuan Penggunaan:\nDetail tentang ketentuan penggunaan yang harus diikuti oleh pengguna aplikasi.\n"),
                                    Text(
                                        "Ketentuan Penggunaan:\nDetail tentang ketentuan penggunaan yang harus diikuti oleh pengguna aplikasi.\n"),
                                    Text(
                                        "Peraturan Umum:\nInformasi tentang peraturan umum yang berlaku saat menggunakan aplikasi.\n"),
                                    Text(
                                        "Kebijakan Privasi:\nPenjelasan tentang kebijakan privasi yang mengatur penggunaan data pribadi oleh aplikasi."),
                                  ],
                                ),
                              ),
                            );
                          },
                        text: "privasi ",
                        style: GoogleFonts.dmSans(
                          color: merahMuda,
                        ),
                      ),
                      TextSpan(text: "Telkomsel"),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 32),

          // * BUTTON LANJUT
          InkWell(
            onTap: () {
              // Aksi yang ingin dilakukan saat tombol diklik
              controller.loginUser();
            },
            borderRadius: BorderRadius.circular(10),
            child: Ink(
              decoration: BoxDecoration(
                color: merahMuda,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                padding: EdgeInsets.all(20),
                child: Center(
                  child: Text(
                    "LANJUT",
                    style: GoogleFonts.dmSans(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 16),

          // * TEXT
          Center(
            child: Text(
              "Atau masuk menggunakan",
              style: GoogleFonts.dmSans(
                color: abu,
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
          ),
          SizedBox(height: 16),

          // * BUTTON FACEBOOK DAN TWITTER
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  // Aksi yang ingin dilakukan saat tombol Facebook diklik
                },
                borderRadius: BorderRadius.circular(5),
                child: Container(
                  width: 180,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    border: Border.all(color: biruTua),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/fb_ic.png"),
                      SizedBox(width: 20),
                      Text(
                        "Facebook",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          color: biruTua,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  // Aksi yang ingin dilakukan saat tombol Twitter diklik
                },
                borderRadius: BorderRadius.circular(5),
                child: Container(
                  width: 180,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    border: Border.all(color: biruMuda),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/twiter_ic.png"),
                      SizedBox(width: 20),
                      Text(
                        "Twitter",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          color: biruMuda,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
