import 'package:ed_community/core/helpers/extensions.dart';
import 'package:ed_community/core/helpers/spacers.dart';
import 'package:ed_community/core/themes/color_manager.dart';
import 'package:ed_community/core/themes/text_style_manager.dart';
import 'package:ed_community/core/widgets/main_button.dart';
import 'package:ed_community/features/profile/ui/widgets/profile_details.dart';
import 'package:ed_community/features/profile/ui/widgets/profile_picture.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Text(
          "Profile",
          style: TextStyleManager.medium16px.copyWith(
            color: Colors.white,
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.topLeft,
        decoration: const BoxDecoration(
            gradient: ColorManager.linearGradientBackground),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.0.w, vertical: 40.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                VerticalSpacer(space: 40),
                ProfilePicture(),
                VerticalSpacer(space: 16),
                Text(
                  "Maryam Moayyad",
                  style: TextStyleManager.medium14px.copyWith(
                    color: Colors.white,
                  ),
                ),
                VerticalSpacer(space: 32),
                ProfileDetails(),
                Spacer(),
                AppMainButton(text: "Save", onPressed: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}