import 'package:day_17_tapsiriq/app/constants/app_assets.dart';
import 'package:day_17_tapsiriq/app/constants/app_paddings.dart';
import 'package:day_17_tapsiriq/presentation/components/view/button/primary_button.dart';
import 'package:day_17_tapsiriq/presentation/components/view/text/primary_text.dart';
import 'package:day_17_tapsiriq/presentation/shared/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SignInOnboardPage extends StatelessWidget {
  const SignInOnboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: AppPaddings.a12,
        child: SizedBox(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: UIColor.pinkColor,
                    borderRadius: BorderRadius.circular(50)),
                child: Image.asset(
                  AppAssets.loginTop2,
                  height: 434.h,
                ),
              ),
              27.verticalSpace,
              PrimaryText(
                text: "Discover Your\nOwn Dream House",
                textColor: UIColor.darkBrown,
                fontWeight: FontWeight.bold,
                fontSize: 30.sp,
                textAlign: TextAlign.center,
              ),
              19.verticalSpace,
              SizedBox(
                width: 332.w,
                child: PrimaryText(
                  text:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam maecenas mi non sed ut odio. Non, justo, sed facilisi et. Eget viverra urna, vestibulum egestas faucibus egestas. Sagittis nam velit volutpat eu nunc.",
                  textColor: UIColor.black,
                  fontSize: 13.sp,
                  textAlign: TextAlign.center,
                ),
              ),
              const Spacer(),
              Container(
                height: 65.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: PrimaryButton(
                        height: 65.h,
                        backgroundColor: UIColor.pinkColor,
                        onPressed: () {
                          /// Sign In CLicked
                        },
                        borderRadiusRoot: const BorderRadius.only(
                          topLeft: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                        ),
                        textSize: 22.sp,
                        fontWeight: FontWeight.bold,
                        title: 'Sign in',
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: PrimaryButton(
                        height: 65.h,
                        textSize: 22.sp,
                        backgroundColor: UIColor.whiteShadow,
                        textColor: UIColor.darkBrown,
                        onPressed: () {
                          ///Register Clicked
                        },
                        fontWeight: FontWeight.bold,
                        borderRadiusRoot: const BorderRadius.only(
                          topRight: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                        title: 'Register',
                      ),
                    ),
                  ],
                ),
              ),
              32.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
