import 'package:flutter/material.dart';
import '../pages/dashboard.dart';
import '../pages/student.dart';
import '../pages/faculty.dart';
import '../pages/payment.dart';
import 'routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case DashboardPageRoute:
      return _getPageRoute(const DashboardPage());
    case StudentPageRoute:
      return _getPageRoute(const StudentPage());
    case FacultyPageRoute:
      return _getPageRoute(const FacultyPage());
    case PaymentPageRoute:
      return _getPageRoute(const PaymentPage());
    default:
      return _getPageRoute(const DashboardPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
