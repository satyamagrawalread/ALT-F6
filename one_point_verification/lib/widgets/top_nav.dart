import 'package:flutter/material.dart';
import '../constants/style.dart';
import '../helpers/responsiveness.dart';
import 'custom_text.dart';

PreferredSize topNavigationBar(
        BuildContext context, GlobalKey<ScaffoldState> key) =>
    PreferredSize(
      preferredSize: const Size.fromHeight(80.0),
      child: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(top: 24.0),
          child: !ResponsiveWidget.isSmallScreen(context)
              ? Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Image.asset(
                        "assets/icons/logo.png",
                        width: 30,
                      ),
                    ),
                  ],
                )
              : IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    key.currentState?.openDrawer();
                  }),
        ),
        elevation: 2,
        title: Padding(
          padding: const EdgeInsets.only(top: 24.0),
          child: Row(
            children: [
              Visibility(
                child: CustomText(
                    text: "AICTE",
                    color: dark,
                    size: 30,
                    weight: FontWeight.bold),
              ),
              Expanded(child: Container()),
              Stack(
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.comment_sharp,
                        color: dark.withOpacity(.7),
                      ),
                      onPressed: () {}),
                  Positioned(
                    top: 7,
                    right: 7,
                    child: Container(
                      width: 12,
                      height: 12,
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: active,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: light, width: 2)),
                    ),
                  )
                ],
              ),
              Stack(
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.notifications,
                        color: dark.withOpacity(.7),
                      ),
                      onPressed: () {}),
                  Positioned(
                    top: 7,
                    right: 7,
                    child: Container(
                      width: 12,
                      height: 12,
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: active,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: light, width: 2)),
                    ),
                  )
                ],
              ),
              const SizedBox(
                width: 18,
              ),
              Container(
                width: 1,
                height: 40,
                color: lightGrey,
              ),
              const SizedBox(
                width: 18,
              ),
              CustomText(
                  text: "Admin",
                  size: 18,
                  color: dark,
                  weight: FontWeight.normal),
              const SizedBox(
                width: 14,
              ),
              Container(
                // mainAxisAlignment: MainAxisAlignment.center,
                // decoration: BoxDecoration(
                //     color: active.withOpacity(.5),
                //     borderRadius: BorderRadius.circular(40)),
                // child: Container(
                // decoration: BoxDecoration(
                //     color: Colors.white,
                //     borderRadius: BorderRadius.circular(30)),
                // padding: const EdgeInsets.all(2),
                // margin: const EdgeInsets.all(2),
                child: CircleAvatar(
                  backgroundColor: light,
                  child: Icon(
                    Icons.person_outline,
                    color: dark,
                  ),
                ),
                // ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
        iconTheme: IconThemeData(color: dark),
        backgroundColor: light,
      ),
    );
