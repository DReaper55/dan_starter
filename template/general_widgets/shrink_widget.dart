/*
import 'package:flutter/material.dart';

class ShrinkWidget extends StatefulWidget {
  final Widget child;
  final VoidCallback? onTap;

  const ShrinkWidget({
    Key? key,
    required this.child,
    this.onTap
  }) : super(key: key);

  @override
  State<ShrinkWidget> createState() => _ShrinkWidgetState();
}

class _ShrinkWidgetState extends State<ShrinkWidget>
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
        onTap: widget.onTap,
        child: widget.child,
      ),
    );
  }
}
*/
