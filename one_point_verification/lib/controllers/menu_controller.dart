import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/style.dart';
import '../routing/routes.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  var activeItem = DashboardPageRoute.obs;
  var hoverItem = "".obs;

  changeActiveItemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  isActive(String itemName) => activeItem.value == itemName;
  isHovering(String itemName) => hoverItem.value == itemName;

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case DashboardPageRoute:
        return _customIcon(CupertinoIcons.square_stack_3d_up, itemName);
      case StudentPageRoute:
        return _customIcon(CupertinoIcons.book, itemName);
      case FacultyPageRoute:
        return _customIcon(Icons.people_alt_outlined, itemName);
      case PaymentPageRoute:
        return _customIcon(Icons.payment, itemName);
      default:
        return _customIcon(Icons.exit_to_app_outlined, itemName);
    }
  }

  Widget _customIcon(IconData icon, String itemName) {
    if (isActive(itemName)) return Icon(icon, size: 22, color: dark);
    return Icon(
      icon,
      color: isHovering(itemName) ? dark : lightGrey,
    );
  }
}
