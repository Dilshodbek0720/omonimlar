import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/colors/app_colors.dart';

class GlobalButton extends StatelessWidget {
  const GlobalButton({
    super.key,
    this.color = AppColors.primary,
    required this.title,
    this.radius = 16,
    this.textColor = AppColors.black,
    this.leftIcon = "",
    this.rightIcon = "",
    this.borderColor = Colors.transparent,
    required this.onTap,
    this.padding,
  });

  final Color color;

  final Color textColor;
  final String title;
  final double radius;
  final String rightIcon;
  final String leftIcon;
  final Color borderColor;
  final VoidCallback onTap;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding == null ? EdgeInsets.zero : padding!,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            border: Border.all(color: borderColor)),
        child: Material(
          borderRadius: BorderRadius.circular(radius),
          color: color,
          child: InkWell(
            borderRadius: BorderRadius.circular(radius),
            onTap: onTap,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // leftIcon.isEmpty ? const Text("") : SvgPicture.asset(leftIcon),
                  SizedBox(width: 16.w),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      overflow: TextOverflow.ellipsis,
                      title,
                      style: TextStyle(
                        fontFamily: "Urbanist",
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: textColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  // SizedBox(width: 16.w),
                  const SizedBox(
                    height: 20,
                    width: 20,
                    child: Icon(Icons.arrow_forward, color: AppColors.c_4CA6A8,),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}