import 'package:ecommerceflutterapp/utils/theme.dart';
import 'package:ecommerceflutterapp/view/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
class CheckWidget extends StatelessWidget {
  const CheckWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Get.isDarkMode?Image.asset('assets/images/check.png'):const Icon(Icons.done,color: pinkClr,),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Row(
          children:  [
            TextUtils(
              text: " I accept",
              fontsize: 16,
              fontWeight: FontWeight.normal,
              color:Get.isDarkMode ?Colors.black:Colors.white,
              underline: TextDecoration.none,
            ),
            TextUtils(
              text: " term & conditions",
              fontsize: 16,
              fontWeight: FontWeight.normal,
              color:Get.isDarkMode ?Colors.black:Colors.white,
              underline: TextDecoration.underline,
            ),
          ],
        ),
      ],
    );
  }
}
