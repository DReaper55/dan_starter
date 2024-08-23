/*
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ShrinkButton extends StatefulWidget {
  final VoidCallback? onTap;
  final VoidCallback? onRetry;
  final Color? color, textColor, borderColor;
  final String? text, icon;
  final Icon? suffixIcon;
  final double? width, height, textSize;
  final EdgeInsetsGeometry? padding, margin;
  final bool isLoading, isEnabled, isExpanded, hasError, hasBorder, hasIcon;
  final double radius;

  const ShrinkButton({
    super.key,
    this.color,
    this.textColor,
    this.borderColor,
    this.width,
    this.text,
    this.icon,
    this.suffixIcon,
    this.onTap,
    this.padding,
    this.margin,
    this.height = 56,
    this.onRetry,
    this.isExpanded = false,
    this.isLoading = false,
    this.isEnabled = true,
    this.hasError = false,
    this.hasBorder = false,
    this.hasIcon = false,
    this.radius = Dimensions.bigLarge,
    this.textSize,
  });

  @override
  State<ShrinkButton> createState() => _ShrinkButtonState();
}

class _ShrinkButtonState extends State<ShrinkButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 100), vsync: this);
    _animation = Tween<double>(begin: 1, end: 0.93).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bool hasFocus = FocusScope.of(context).hasFocus;

    return AnimatedBuilder(
      animation: _controller,
      builder: (BuildContext context, Widget? child) {
        return Transform.scale(
          scale: _animation.value,
          child: child,
        );
      },
      child: InkResponse(
        onTapDown: (_) => _controller.forward(),
        onTapUp: (_) => _controller.reverse(),
        onTapCancel: () => _controller.reverse(),
        radius: 0.0,
        onTap: widget.hasError
            ? widget.onRetry
            : widget.isLoading
                ? null
                : (!widget.isEnabled
                    ? null
                    : () {
                        if (hasFocus) {
                          FocusScope.of(context).unfocus();
                        }
                        widget.onTap?.call();
                      }),
        borderRadius: BorderRadius.circular(12),
        child: Container(
          height: widget.height,
          padding: widget.padding,
          margin: widget.margin ??
              const EdgeInsets.symmetric(horizontal: Dimensions.small, vertical: Dimensions.tiny),
          decoration: BoxDecoration(
            border: widget.hasBorder
                ? Border.all(width: 1.0, color: (widget.borderColor ?? PickBinColors.primary))
                : null,
            borderRadius: BorderRadius.circular(widget.radius),
            color: widget.color ??
                (!widget.isEnabled
                    ? PickBinColors.primaryFade
                    : PickBinColors.primary),
          ),
          alignment: Alignment.center,
          width: (){
            if(widget.isExpanded && widget.width == null){
              return Helpers.width(context);
            }

            if(!widget.isExpanded && widget.width == null){
              return (widget.text!.length * Dimensions.medium);
            }

            if(widget.width != null){
              return widget.width;
            }
          }(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisSize: MainAxisSize.min,
            children: [
              if (!widget.isLoading)
                if(widget.hasIcon)
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              if(widget.icon != null)
                              const Spacing.bigWidth(),
                              if(widget.icon != null)
                              SvgPicture.asset(widget.icon!),
                              const Spacing.mediumWidth(),
                              Text(
                                widget.text ?? ButtonStrings.next,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: widget.textSize ?? 14,
                                  color: widget.textColor ?? PickBinColors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),

                        if(widget.suffixIcon != null)
                          widget.suffixIcon!,

                        if(widget.suffixIcon != null)
                          const Spacing.mediumWidth()
                      ],
                    ),
                  )
                else
                  Text(
                    widget.text ?? ButtonStrings.next,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: widget.textSize ?? 14,
                      color: widget.textColor ?? PickBinColors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),

              if (widget.isLoading)
                PickBinLoader(
                  color: widget.textColor ?? PickBinColors.white,
                )
            ],
          ),
        ),
      ),
    );
  }
}
*/
