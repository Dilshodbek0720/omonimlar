import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omonimlar/main.dart';
import 'package:omonimlar/screens/widgets/global_button.dart';
import 'package:omonimlar/utils/colors/app_colors.dart';
import 'package:omonimlar/utils/icons.dart';
import 'package:omonimlar/utils/size/size_extension.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.c_4CA6A8,
        body: Column(
          children: [
            70.ph,
            Padding(padding: EdgeInsets.symmetric(horizontal: 24),
              child: SizedBox(
                width: 312.w,
                  height: 420.h,
                  child: Image.asset(AppIcons.mainImage, fit: BoxFit.cover,)),
            ),
            64.ph,
            const Text("Omonimlar", style: TextStyle(fontSize: 24, color: AppColors.white, fontWeight: FontWeight.w600),),
            78.ph,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.w),
              child: GlobalButton(title: "Dasturga kirish", onTap: (){

              },
                radius: 4,
              color: AppColors.white,
                textColor: AppColors.c_4CA6A8,
              ),
            )
          ],
        ),
      ),
    );
  }
}
