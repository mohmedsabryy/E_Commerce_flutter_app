      import 'package:ecommerceflutterapp/utils/theme.dart';
      import 'package:ecommerceflutterapp/view/widgets/text_utils.dart';
      import 'package:flutter/material.dart';
      import 'package:get/get_core/src/get_main.dart';
      import 'package:get/get_navigation/src/extension_navigation.dart';
      class ContinerUnder extends StatelessWidget {
        final String text;
        final Function() onPressed;
        final String TextType;

        const ContinerUnder({required this.TextType,required this.text,required this.onPressed, Key? key}) : super(key: key);

        @override
        Widget build(BuildContext context) {
          return Container(
              width: double.infinity,
              height: double.infinity,
              decoration:  BoxDecoration(
              color:Get.isDarkMode? mainColor:pinkClr,
              borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20) ,
          topRight: Radius.circular(20) ,
          ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
          TextUtils(
          text: text,
          fontsize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          underline: TextDecoration.none,
          ),
          TextButton(
          onPressed: onPressed,
          child: TextUtils(
          text: text,
          fontsize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          underline: TextDecoration.none,
          ),
          ),
          ]
          ,
          )
          ,
          );
        }
      }
