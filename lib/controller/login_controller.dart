import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:garments_niyog/helpers/global_helper.dart';
import 'package:garments_niyog/helpers/k_log.dart';
import 'package:garments_niyog/pages/login_page.dart';
import 'package:garments_niyog/services/api_service.dart';
import 'package:get/get.dart' hide MultipartFile, FormData;
import 'package:shared_preferences/shared_preferences.dart';

import '../helpers/route.dart';
import '../pages/main_page.dart';

class LoginController extends GetxController with ApiService {
  // Observable variables
  // var rememberMe = false.obs; // State for checkbox

  final isLoggedIn = RxBool(false);
  final isPasswordHidden = RxBool(false);
  final token = RxString('');

  final saveToken = RxString('');

  final username = RxString('');
  final password = RxString('');
  final isLoading = RxBool(false);
  // @override
  // void onInit() {
  //   super.onInit();
  //   // usernameController = TextEditingController();
  //   // passwordController = TextEditingController();
  //   // loadSavedCredentials();
  // }

  @override
  void onClose() {
    super.onClose();
  }

  // // Toggle the "Remember Me" checkbox
  // void toggleRememberMe() {
  //   rememberMe.value = !rememberMe.value;
  // }

  // Method to toggle the password visibility
  void loginCheck(context) async {
    try {
      isLoading.value = true;

      Map<String, dynamic> bodyData = {
        'email': username.value,
        'password': password.value,
      };
      final body = FormData.fromMap(bodyData);

      final response = await post(
        path: 'login',
        body: body,
      );

      if (response.data != null && response.statusCode == 200) {
        if (username.value != '' && password.value != '') {
          String token1 = jsonEncode(response.data['token']);

          String token2 = token1.startsWith('"') && token1.endsWith('"')
              ? token1.substring(1, token1.length - 1)
              : token1;
          token.value = token2.replaceFirst(RegExp(r'^\d+\|'), '');

          // Save token using SharedPreferences
          SharedPreferences prefs = await SharedPreferences.getInstance();
          await prefs.setString('login_token', token.value);
          // await prefs.setString('username', username.value);
          // await prefs.setString('password', password.value);
          // If the checkbox is checked, save credentials
          // if (rememberMe.value) {
          //   saveCredentials(username.value, password.value, token.value);
          // } else {
          //   clearSavedCredentials();
          // }
          // Update state

          token.value;
          isLoggedIn.value = true;
          Global.showScaffoldMessage(
            message: jsonEncode(response.data['message']).replaceAll('"', ''),
            context: context,
            color: Colors.green,
          );
          // Navigate to the main app or dashboard
          offAll(MainPage());
        }
      } else {
        if (response.statusCode == 401) {
          Global.showScaffoldMessage(
            message: jsonEncode(response.data['error']).replaceAll('"', ''),
            context: context,
            color: Colors.red,
          );
        } else if (response.statusCode == 422) {
          Global.showScaffoldMessage(
            message: 'The email field must be a valid email address',
            context: context,
            color: Colors.red,
          );
        } else {
          Global.showScaffoldMessage(
            message: 'Someting went wrong',
            context: context,
            color: Colors.red,
          );
        }
      }
    } catch (e, s) {
      kError(e);
      kError(s);
    } finally {
      isLoading.value = false;
    }
  }

// Method to toggle the password visibility
  void togglePasswordVisibility() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }

  // // Check if the user is already logged in
  Future<void> checkLoginStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? savedToken = prefs.getString('login_token');
    if (savedToken != null) {
      token.value = savedToken;
      isLoggedIn.value = true;

      // Navigate to the main app or dashboard
      offAll(MainPage());
    } else {
      offAll(LoginPage());
    }
  }

  void getFromSharedPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    saveToken.value = prefs.getString('login_token')!;
    kLog(saveToken);
  }

  // Logout function to clear token
  Future<void> logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('login_token');
    isLoggedIn.value = false;
    username.value = '';
    password.value = '';
    token.value = '';

    // Navigate back to login page
    offAll(LoginPage());

    // if (rememberMe.value) {
    //   // Navigate back to login page
    //   SharedPreferences prefs = await SharedPreferences.getInstance();
    //   await prefs.remove('login_token');
    //   token.value = '';
    //   isLoggedIn.value = false;
    //   offAll(LoginPage());
    // } else {
    //   SharedPreferences prefs = await SharedPreferences.getInstance();
    //   await prefs.remove('login_token');
    //   isLoggedIn.value = false;
    //   username.value = '';
    //   password.value = '';
    //   token.value = '';

    //   // Navigate back to login page
    //   offAll(LoginPage());
    // }
  }

  // // Save credentials locally using SharedPreferences
  // Future<void> saveCredentials(
  //     String username, String password, String token) async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   await prefs.setString('username', username);
  //   await prefs.setString('password', password);
  //   await prefs.setString('login_token', token);
  // }

  // // Load saved credentials when the app starts
  // Future<void> loadSavedCredentials() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   String? savedUsername = prefs.getString('username');
  //   String? savedPassword = prefs.getString('password');
  //   String? savedToken = prefs.getString('login_token');

  //   if (savedUsername != null && savedPassword != null && savedToken != null) {
  //     username.value = savedUsername;
  //     password.value = savedPassword;
  //     token.value = savedToken;

  //     // Update TextEditingController's values
  //     usernameController.text = username.value;
  //     passwordController.text = password.value;
  //     rememberMe.value = true;
  //   }
  // }

  // // Clear saved credentials
  // Future<void> clearSavedCredentials() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   await prefs.remove('username');
  //   await prefs.remove('password');
  //   username.value = '';
  //   password.value = '';
  // }
}
