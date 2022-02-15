import 'package:ecommerceflutterapp/logic/controllers/auth_controller.dart';
import 'package:ecommerceflutterapp/utils/my_string.dart';
import 'package:ecommerceflutterapp/utils/theme.dart';
import 'package:ecommerceflutterapp/view/widgets/authButtom.dart';
import 'package:ecommerceflutterapp/view/widgets/authTextFromField.dart';
import 'package:ecommerceflutterapp/view/widgets/checkWidget.dart';
import 'package:ecommerceflutterapp/view/widgets/continerUnder.dart';
import 'package:ecommerceflutterapp/view/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import 'login_Screen.dart';

class SignUpScreen extends StatelessWidget {
  final formKey =GlobalKey<FormState>() ;
  final controller =Get.find<AuthController>() ;

  SignUpScreen({Key? key}) : super(key: key);

  final TextEditingController nameController =TextEditingController() ;
  final TextEditingController emailController =TextEditingController() ;
  final TextEditingController passwordController =TextEditingController() ;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
          ),

          backgroundColor: Get.isDarkMode?Colors.white:darkGreyClr,
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: MediaQuery
                      .of(context)
                      .size
                      .height / 1.3,
                  child:  Padding(
                    padding: const EdgeInsets.only(
                      left: 25,
                      right: 25,
                      top: 40,
                    ),
                    child: Form(
                      key: formKey,
                      child: Column(
                        children: [
                          // Text Sign UP
                          Row(
                            children: [
                              TextUtils(
                                text: "SIGN",
                                fontsize: 28,
                                fontWeight: FontWeight.w500,
                                color:Get.isDarkMode ? mainColor : pinkClr,
                                underline: TextDecoration.none,
                              ),
                              const SizedBox(width: 3,),
                              TextUtils(
                                text: "UP",
                                fontsize: 28,
                                fontWeight: FontWeight.w500,
                                color:Get.isDarkMode ?Colors.black :Colors.white ,
                                underline: TextDecoration.none,
                              ),
                            ],
                          ),
                          const SizedBox(height: 50,),
                          // name
                          AuthTextFromField(
                            controller: nameController,
                            obscureText: false,
                            prefixIcon:Get.isDarkMode? Image.asset('assets/images/user.png')
                            :const Icon(
                              Icons.person ,
                              color: pinkClr,
                              size: 30,
                            ),
                            suffixIcon: const Text(''),
                            hintText: 'User Name ',
                            validator: (value)
                            {

                              if (value.toString().length<=2|| !RegExp(validationName).hasMatch(value)){
                                return "Enter Valid Name ";
                              }
                              else {
                                return null ;
                              }
                            },
                          ) ,
                          const SizedBox(height: 20,),
                          // email
                          AuthTextFromField(
                            controller: emailController,
                            obscureText: false,
                            prefixIcon:Get.isDarkMode? Image.asset('assets/images/email.png') :const Icon(
                            Icons.email ,
                            color: pinkClr,
                            size: 30,
                          ),
                            suffixIcon: const Text(''),
                            hintText: 'Email ',
                            validator: (value)
                            {
                              if(!RegExp(validationEmail).hasMatch(value))
                                {
                                  return "Invalid Email" ;
                                }
                              else {
                                return null ;
                              }

                            },
                          ) ,
                          const SizedBox(height: 20,),
                          //password
                         GetBuilder<AuthController>(
                             builder: (_){
                               return  AuthTextFromField(
                                 controller: passwordController,
                                 obscureText:controller.isVisibility? false:true,
                                 prefixIcon: Get.isDarkMode?Image.asset('assets/images/lock.png') :const Icon(
                                   Icons.lock ,
                                   color: pinkClr,
                                   size: 30,
                                 ),
                                 suffixIcon: IconButton(
                                   onPressed: (){
                                     controller.visibility();
                                   },
                                   icon:controller.isVisibility? Icon(
                                     Icons.visibility_off,
                                     color: Get.isDarkMode? mainColor :pinkClr,
                                   ):Icon(
                                     Icons.visibility ,
                                     color: Get.isDarkMode? mainColor :pinkClr,
                                   ),
                                 ),
                                 hintText: 'Password ',

                                 validator: (value)
                                 {
                                   if (value.toString().length<=6){
                                     return 'Password should be longer or equal  to 6 characters' ;
                                   }
                                   else {
                                     return null;
                                   }

                                 },
                               ) ;
                             }),
                          const SizedBox(height: 50,),
                           CheckWidget() ,
                          const SizedBox(height: 50,),

                          // buttom sigin up
                          AuthButtom(
                            text:"SIGN UP" ,
                            onPressed: (){},
                          ) ,
                        ],
                      ),
                    ),

                  ),

                ),
                ContinerUnder(
                  onPressed:(){
                    Get.off( LoginScreen()) ;
                  } ,
                  text: "Already have an Account ? ",
                  TextType: "Log in ",
                ) ,

              ],
            ),
          ),
        ));
  }
}
