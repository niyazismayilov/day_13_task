import 'package:day_17_tapsiriq/app/constants/app_paddings.dart';
import 'package:day_17_tapsiriq/presentation/components/view/button/primary_button.dart';
import 'package:day_17_tapsiriq/presentation/components/view/text/primary_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../app/constants/app_assets.dart';
import '../../components/view/text_field/primary_text_field.dart';
import '../../shared/color.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: AppPaddings.a12,
          child: SizedBox(
            width: 1.sw,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                22.verticalSpace,
                PrimaryText(
                  text: "Welcome Back",
                  textColor: UIColor.darkBrown,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.sp,
                  textAlign: TextAlign.center,
                ),
                4.verticalSpace,
                SizedBox(
                  width: 332.w,
                  child: PrimaryText(
                    text:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam maecenas mi non sed ut odio. Non, justo, sed facilisi et. ",
                    textColor: UIColor.black,
                    fontSize: 13.sp,
                    textAlign: TextAlign.center,
                  ),
                ),
                32.verticalSpace,
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: const Offset(0, 1), // changes position of shadow
                      ),
                    ]
                  ),
                  child: const PrimaryTextField(
                    hint: "Username , email & phone number",
                    backgroundColor: UIColor.whiteShadow,
                    borderColor: UIColor.transparent,
                    borderRadius: 15,
                  ),
                ),
                8.verticalSpace,
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: const Offset(0, 1), // changes position of shadow
                        ),
                      ]
                  ),
                  child: const PrimaryTextField(
                    hint: "Password",
                    backgroundColor: UIColor.whiteShadow,
                    borderColor: UIColor.transparent,
                    borderRadius: 15,
        
                  ),
                ),
                6.verticalSpace,
                const Align(
                  alignment: Alignment.centerRight,
                  child: PrimaryText(
                    text: "Forgot Password?",
                    textColor: UIColor.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                24.verticalSpace,
                PrimaryButton(
                  height: 60.h,
                  title: "Sign in",
                  backgroundColor: UIColor.pinkColor,
                  textSize: 22.sp,
                  fontWeight: FontWeight.bold,
                  onPressed: (){
                    ///Sign In Clicked
                  },
                ),
                24.verticalSpace,
                Row(
                  children: [
                    Expanded(child: SvgPicture.asset(AppAssets.shadowLeftPink)),
                    Padding(
                      padding: AppPaddings.h6,
                      child: PrimaryText(text: "Or Sign up With", textColor: UIColor.textFieldGray, fontSize: 12.sp,),
                    ),
                    Expanded(child: SvgPicture.asset(AppAssets.shadowRightPink)),
                  ],
                ),
                32.verticalSpace,
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: (){
                        ///Google Tapped
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: UIColor.whiteShadow
                        ),
                        child: Padding(
                          padding: AppPaddings.a12,
                          child: SvgPicture.asset(AppAssets.googleIcon),
                        ),
                      ),
                    ),
                    16.horizontalSpace,
                    InkWell(
                      onTap: (){
                        ///Facebook Tapped
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: UIColor.whiteShadow
                        ),
                        child: Padding(
                          padding: AppPaddings.a12,
                          child: SvgPicture.asset(AppAssets.facebookIcon),
                        ),
                      ),
                    ),
                    16.horizontalSpace,
                    InkWell(
                      onTap: (){
                        ///Apple Tapped
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: UIColor.whiteShadow
                        ),
                        child: Padding(
                          padding: AppPaddings.a12,
                          child: SvgPicture.asset(AppAssets.appleIcon),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
