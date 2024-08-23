// import 'package:flutter/material.dart';

// Import material package then uncomment
/*class SnackBarService {
  static showCustomSnackBar(BuildContext context, {required String text, Color? bgColor, double? radius, String? actionLabel, void Function()? action}) {
    SnackBarService.hideCustomSnackBar(context);
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius ?? 12.0)),
        content: Text(text),
        action: (){
          if(actionLabel != null && action != null){
            return SnackBarAction(
              label: actionLabel,
              onPressed: action,
            );
          }
        }(),
        backgroundColor: bgColor,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  static hideCustomSnackBar(BuildContext context) {
    return ScaffoldMessenger.of(context).hideCurrentSnackBar();
  }
}*/
