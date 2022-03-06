import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import '../constants/controllers.dart';
import '../constants/style.dart';
import '../helpers/responsiveness.dart';
import 'custom_text.dart';
import 'side_menu_item.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Container(
      color: light,
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    SizedBox(width: _width / 48),
                    Flexible(
                      child: CustomText(
                        text: "AICTE",
                        size: 30,
                        weight: FontWeight.bold,
                        color: active,
                      ),
                    ),
                    SizedBox(width: _width / 48),
                  ],
                ),
              ],
            ),
          // Divider(
          //   color: lightGrey.withOpacity(.1),
          // ),
          const SizedBox(
            height: 25,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SideMenuItem(
                itemName: "Dashboard",
                onTap: () {
                  if (!menuController.isActive("Dashboard")) {
                    menuController.changeActiveItemTo("Dashboard");
                    if (ResponsiveWidget.isSmallScreen(context)) {
                      Get.back();
                    }
                    navigationController.navigateTo("Dashboard");
                  }
                },
              ),
              SideMenuItem(
                itemName: "Student",
                onTap: () {
                  if (!menuController.isActive("Student")) {
                    menuController.changeActiveItemTo("Student");
                    if (ResponsiveWidget.isSmallScreen(context)) {
                      Get.back();
                    }
                    navigationController.navigateTo("Student");
                  }
                },
              ),
              SideMenuItem(
                itemName: "Faculty",
                onTap: () {
                  if (!menuController.isActive("Faculty")) {
                    menuController.changeActiveItemTo("Faculty");
                    if (ResponsiveWidget.isSmallScreen(context)) {
                      Get.back();
                    }
                    navigationController.navigateTo("Faculty");
                  }
                },
              ),
              SideMenuItem(
                itemName: "Payment",
                onTap: () {
                  if (!menuController.isActive("Payment")) {
                    menuController.changeActiveItemTo("Payment");
                    if (ResponsiveWidget.isSmallScreen(context)) {
                      Get.back();
                    }
                    navigationController.navigateTo("Payment");
                  }
                },
              ),
            ],
          ),
          // Column(
          //   mainAxisSize: MainAxisSize.min,
          //   children: sideMenuItems
          //       .map((itemName) => SideMenuItem(
          //             itemName: itemName == AuthenticationPageRoute
          //                 ? "Log Out"
          //                 : itemName,
          //             onTap: () {
          //               if (itemName == AuthenticationPageRoute) {
          //                 // TODO: go to authentication
          //               }

          //               if (!menuController.isActive(itemName)) {
          //                 menuController.changeActiveItemTo(itemName);
          //                 if (ResponsiveWidget.isSmallScreen(context)) {
          //                   Get.back();
          //                 }
          //                 navigationController.navigateTo(itemName);
          //               }
          //             },
          //           ))
          //       .toList(),
          // )
        ],
      ),
    );
  }
}
