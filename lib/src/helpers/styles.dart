import 'package:evolvex_lib/src/helpers/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Styles {
  static final colors = _Colors();
  static final textStyles = _TextStyles();
}

class _Colors {
  final kPrimaryColor =
      Utils.getMaterialColorFromColor(const Color(0xff19ac90));
}

class _TextStyles {
  TextStyle f10Regular({String? fontFamily, Color? color}) =>
      TextStyle(fontWeight: FontWeight.normal, fontSize: 10.sp, color: color);

  TextStyle f10SemiBold({String? fontFamily, Color? color}) =>
      TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w600, color: color);

  TextStyle f10Bold({String? fontFamily, Color? color}) =>
      TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold, color: color);

  TextStyle f12Regular({String? fontFamily, Color? color}) =>
      TextStyle(fontWeight: FontWeight.normal, fontSize: 12.sp, color: color);

  TextStyle f12SemiBold({String? fontFamily, Color? color}) =>
      TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600, color: color);

  TextStyle f12Bold({String? fontFamily, Color? color}) =>
      TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold, color: color);

  TextStyle f14Regular({String? fontFamily, Color? color}) =>
      TextStyle(fontWeight: FontWeight.normal, fontSize: 14.sp, color: color);

  TextStyle f14SemiBold({String? fontFamily, Color? color}) =>
      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600, color: color);

  TextStyle f14Bold({String? fontFamily, Color? color}) =>
      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold, color: color);

  TextStyle f16Regular({String? fontFamily, Color? color}) =>
      TextStyle(fontWeight: FontWeight.normal, fontSize: 16.sp, color: color);

  TextStyle f16SemiBold({String? fontFamily, Color? color}) =>
      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600, color: color);

  TextStyle f16Bold({String? fontFamily, Color? color}) =>
      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold, color: color);

  TextStyle f18Regular({String? fontFamily, Color? color}) =>
      TextStyle(fontWeight: FontWeight.normal, fontSize: 18.sp, color: color);

  TextStyle f18SemiBold({String? fontFamily, Color? color}) =>
      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600, color: color);

  TextStyle f18Bold({String? fontFamily, Color? color}) =>
      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold, color: color);

  TextStyle f20Regular({String? fontFamily, Color? color}) =>
      TextStyle(fontWeight: FontWeight.normal, fontSize: 20.sp, color: color);

  TextStyle f20SemiBold({String? fontFamily, Color? color}) =>
      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600, color: color);

  TextStyle f20Bold({String? fontFamily, Color? color}) =>
      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold, color: color);

  TextStyle f22Regular({String? fontFamily, Color? color}) =>
      TextStyle(fontWeight: FontWeight.normal, fontSize: 22.sp, color: color);

  TextStyle f22SemiBold({String? fontFamily, Color? color}) =>
      TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w600, color: color);

  TextStyle f22Bold({String? fontFamily, Color? color}) =>
      TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold, color: color);
}
