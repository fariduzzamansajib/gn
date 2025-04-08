import 'package:flutter/material.dart';
import 'package:garments_niyog/helpers/render_svg.dart';
import 'package:garments_niyog/helpers/route.dart';
import 'package:get/get.dart';
import 'k_text.dart';

class Global {
  Global._();

  static void confirmDialog({required void Function()? onConfirmed}) async {
    return Get.defaultDialog(
      contentPadding: EdgeInsets.zero,
      barrierDismissible: true,
      // backgroundColor: Colors.white,
      title: '',
      content: SizedBox(
        height: 200,
        width: 320,
        child: Column(
          children: [
            Icon(
              Icons.warning,
              color: Colors.red.withOpacity(.6),
              size: 60,
            ),
            SizedBox(
              height: 22,
            ),
            KText(
              text: 'Are you sure to do this?',
              fontSize: 17,
              bold: false,
            ),
            SizedBox(
              height: 22,
            ),
            Row(
              children: [
                Expanded(flex: 1, child: SizedBox()),
                Expanded(
                  flex: 4,
                  child: TextButton(
                    onPressed: () => back(),
                    style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.red)),
                    child: KText(
                      text: 'Cancel',
                      bold: true,
                      color: Colors.white,
                    ),
                  ),
                ),
                Expanded(flex: 1, child: SizedBox()),
                Expanded(
                  flex: 4,
                  child: TextButton(
                    onPressed: onConfirmed,
                    style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all(Colors.blueAccent)),
                    child: KText(
                      text: 'Confirm',
                      bold: true,
                      color: Colors.white,
                    ),
                  ),
                ),
                Expanded(flex: 1, child: SizedBox()),
              ],
            )
          ],
        ),
      ),
    );
  }

  static void addNewModal({required void Function()? onConfirmed}) async {
    return Get.defaultDialog(
      contentPadding: EdgeInsets.zero,
      barrierDismissible: true,
      // backgroundColor: Colors.white,
      title: '',
      content: SingleChildScrollView(
        child: Column(
          children: [
            Icon(
              Icons.warning,
              color: Colors.red.withOpacity(.6),
              size: 60,
            ),
            SizedBox(
              height: 22,
            ),
            KText(
              text: 'Are you sure to do this?',
              fontSize: 17,
              bold: false,
            ),
            SizedBox(
              height: 22,
            ),
            Row(
              children: [
                Expanded(flex: 1, child: SizedBox()),
                Expanded(
                  flex: 4,
                  child: TextButton(
                    onPressed: () => back(),
                    style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.red)),
                    child: KText(
                      text: 'Cancel',
                      bold: true,
                      color: Colors.white,
                    ),
                  ),
                ),
                Expanded(flex: 1, child: SizedBox()),
                Expanded(
                  flex: 4,
                  child: TextButton(
                    onPressed: onConfirmed,
                    style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all(Colors.blueAccent)),
                    child: KText(
                      text: 'Confirm',
                      bold: true,
                      color: Colors.white,
                    ),
                  ),
                ),
                Expanded(flex: 1, child: SizedBox()),
              ],
            )
          ],
        ),
      ),
    );
  }

  static void showScaffoldMessage({
    required BuildContext context,
    required String message,
    Color color = Colors.black87,
    Duration duration = const Duration(seconds: 3),
  }) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      backgroundColor: color,
      duration: duration,
    ));
  }

  //show success Dialog
  static void successDialog({
    required String title,
    required String msg,
    required Color color,
    String? path,
    required void Function()? onPressed,
  }) {
    Get.dialog(
      barrierDismissible: false,
      Dialog(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5),
              ),
              // border: Border.all(color: hexToColor('#FFFFFF'), width: 1),
            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 12, bottom: 13),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (path != null)
                        RenderSvg(
                          path: path,
                          width: 20,
                          height: 20,
                        ),
                      if (path != null) SizedBox(width: 10),
                      KText(
                        text: title,
                        color: Colors.white,
                        fontSize: 18,
                        bold: true,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      KText(
                        text: msg,
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        style: ButtonStyle(
                          minimumSize:
                              WidgetStateProperty.all<Size?>(Size(109, 35)),
                          backgroundColor:
                              WidgetStateProperty.all<Color>(color),
                          visualDensity: VisualDensity(horizontal: 2),
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                        ),
                        onPressed: onPressed,
                        child: KText(
                          text: 'OK',
                          color: Colors.white,
                          bold: true,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
