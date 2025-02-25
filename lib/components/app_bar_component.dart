import 'package:flutter/material.dart';
import '../base/base.dart';
import '../helpers/hex_color.dart';

class AppBarComponent extends StatelessWidget
    implements PreferredSizeWidget, Base {
  const AppBarComponent({super.key});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // backgroundColor: Colors.blue,
      // systemOverlayStyle: systemUiOverlayStyle(),
      // leading: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: Container(
      //     height: 50,
      //     width: 50,
      //     decoration: BoxDecoration(
      //       color: Colors.white,
      //       borderRadius: BorderRadius.circular(50),
      //       border: Border.all(color: Colors.white, width: 2),
      //     ),
      //     child: InkWell(
      //       onTap: () {
      //         Base.navigationController.globalKey.currentState!.openDrawer();
      //       },
      //       child: ClipRRect(
      //         borderRadius: BorderRadius.circular(50),
      //         child: CachedNetworkImage(
      //           fit: BoxFit.cover,
      //           imageUrl:
      //               "https://plus.unsplash.com/premium_photo-1689539137236-b68e436248de?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      //           progressIndicatorBuilder: (context, url, downloadProgress) =>
      //               CircularProgressIndicator(
      //             value: downloadProgress.progress,
      //             color: Colors.white,
      //           ),
      //           errorWidget: (context, url, error) => Icon(Icons.error),
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          child: FlutterLogo(),
        ),
      ),
      titleSpacing: 0,
      surfaceTintColor: hexToColor('#33A0DA'),
      title: Row(
        children: [
          // SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Shariar Nahid ',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Edit Profile',
                  style: TextStyle(fontSize: 14),
                  maxLines: 1,
                ),
              ],
            ),
          ),
        ],
      ),
      centerTitle: true,
      elevation: 0,
      backgroundColor: hexToColor('#33A0DA'),
      foregroundColor: Colors.white,
      actions: [
        IconButton(
          icon: Icon(
            Icons.notifications,
            // color: Colors.white,
          ),
          onPressed: () {
            // toNamed('/notification');
            Base.navigationController.globalKey.currentState!.openEndDrawer();
          },
        ),
      ],
    );
  }
}
