/*
import 'package:flutter/material.dart';

class MyAppTextField extends StatefulWidget {
  const MyAppTextField({
    super.key,
    this.label,
    this.readOnly = false,
    this.displayShadow = false,
    this.borderColor,
    this.onTap,
    this.labelSize,
    this.labelColor,
    this.onChanged,
    this.keyboardType,
    this.textInputAction,
    this.scrollPhysics,
    this.textAlign,
    this.validator,
    this.prefix,
    this.controller,
    this.maxLines,
    this.minLines,
    this.prefixIcon,
    this.suffixIcon,
    this.hintText,
    this.enabled,
    this.initialValue,
    this.obscureText = false,
    this.textCapitalization,
  });

  final String? label;
  final Function(String)? onChanged;
  final Function()? onTap;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final String? Function(String?)? validator;
  final bool obscureText;
  final bool displayShadow;
  final TextEditingController? controller;
  final int? maxLines;
  final int? minLines;
  final Widget? prefixIcon;
  final Widget? prefix;
  final Widget? suffixIcon;
  final String? hintText;
  final bool? enabled;
  final bool readOnly;
  final String? initialValue;
  final TextAlign? textAlign;
  final ScrollPhysics? scrollPhysics;
  final TextCapitalization? textCapitalization;
  final double? labelSize;
  final Color? labelColor;
  final Color? borderColor;

  @override
  MyAppTextFieldState createState() => MyAppTextFieldState();
}

class MyAppTextFieldState extends State<MyAppTextField> {
  final focusNode = FocusNode();
  bool isFocusNode = false;
  bool isErrorNode = false;

  @override
  void initState() {
    focusNode.addListener(_focusNodeListener);
    super.initState();
  }


  @override
  void dispose() {
    focusNode.dispose();
    return super.dispose();
  }

  void _focusNodeListener() {
    if(!focusNode.hasFocus){
      isFocusNode = false;
      isErrorNode = false;
    }

    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null)
          Text(
            widget.label!,
            style: Styles.w500(
              size: widget.labelSize ?? 14,
              color: widget.labelColor ?? MyAppColors.secondary,
            ),
          ),
        if (widget.label != null) const Spacing.mediumHeight(),
        StatefulBuilder(
          builder: (ctx, setState) => Container(
            margin: widget.displayShadow
                ? const EdgeInsets.symmetric(horizontal: Dimensions.small)
                : null,
            decoration: widget.displayShadow
                ? BoxDecoration(
                    color: MyAppColors.white,
                    borderRadius: BorderRadius.circular(Dimensions.big),
                    boxShadow: [
                      if(!isFocusNode && !isErrorNode)
                        MyAppShadows.defaultShadow,

                      if(isFocusNode && !isErrorNode)
                        MyAppShadows.focusShadow,

                      // if(isErrorNode && !isFocusNode)
                      //   MyAppShadows.errorShadow,

                    ])
                : null,
            child: TextFormField(
              focusNode: focusNode,
              obscureText: widget.obscureText,
              keyboardType: widget.keyboardType,
              textInputAction: widget.textInputAction,
              onChanged: widget.onChanged,
              onTap: widget.onTap,
              readOnly: widget.readOnly,
              initialValue: widget.initialValue,
              maxLines: widget.maxLines ?? 1,
              validator: widget.validator,
              controller: widget.controller,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              enabled: widget.enabled,
              scrollPhysics: widget.scrollPhysics,
              textAlign: widget.textAlign ?? TextAlign.start,
              minLines: widget.minLines ?? 1,
              decoration: InputDecoration(
                alignLabelWithHint: true,
                hintText: widget.hintText,
                prefixIcon: widget.prefixIcon,
                prefix: widget.prefix,
                suffixIcon: widget.suffixIcon,
                border: InputBorder.none,
                labelStyle: TextStyle(
                  color: focusNode.hasFocus ? MyAppColors.primary : null,
                ),
                hintStyle: TextStyle(
                  color: Theme.of(context).textTheme.bodySmall?.color,
                ),
                contentPadding: const EdgeInsets.all(Dimensions.medium),
                focusedBorder: (){
                  setState((){
                    isFocusNode = true;
                    isErrorNode = false;
                  });
                  if(!widget.displayShadow){
                    return OutlineInputBorder(
                      borderSide: BorderSide(
                          color: widget.borderColor ?? MyAppColors.secondary, width: 1.0),
                      borderRadius: BorderRadius.circular(Dimensions.bigLarge),
                    );
                  }
                }(),
                enabledBorder: (){
                  if(!widget.displayShadow){
                    return OutlineInputBorder(
                      borderSide: BorderSide(
                          color: widget.borderColor ?? MyAppColors.secondary, width: 1.0),
                      borderRadius: BorderRadius.circular(Dimensions.bigLarge),
                    );
                  }
                }(),
                disabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black54),
                  borderRadius: BorderRadius.circular(Dimensions.bigLarge),
                ),
                errorBorder: (){
                  // setState((){
                    // isErrorNode = true;
                    // isFocusNode = false;
                  // });

                  if(!widget.displayShadow){
                    return OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: MyAppColors.red, width: 1.0),
                      borderRadius: BorderRadius.circular(Dimensions.bigLarge),
                    );
                  }
                }(),
                focusedErrorBorder: (){
                  // setState((){
                    // isErrorNode = true;
                    // isFocusNode = false;
                  // });

                  if(!widget.displayShadow){
                    return OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: MyAppColors.red, width: 2.0),
                      borderRadius: BorderRadius.circular(Dimensions.big),
                    );
                  }
                }(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
*/
