import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_tsel/app/routes/app_pages.dart';

class LoginController extends GetxController {
  TextEditingController phoneC = TextEditingController();
  RxBool check = false.obs;

  void loginUser() {
    String phone = phoneC.text.trim();

    // Verifikasi email dan password
    if (phone == '089510036900') {
      // Berhasil login, lakukan sesuatu di sini seperti navigasi ke halaman berikutnya
      Get.snackbar(
        'Login',
        'Login berhasil',
        colorText: Colors.white,
      );
      Get.offAllNamed(Routes.HOME);
    } else {
      // Login gagal
      Get.snackbar(
        'Login',
        'Login gagal. Periksa kembali Nomor Handphone Anda',
      );
    }
  }

  @override
  void onClose() {
    phoneC.dispose();

    super.onClose();
  }
}
