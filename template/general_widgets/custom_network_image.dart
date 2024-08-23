/*import 'dart:io';

import 'package:flutter/material.dart';

class CustomNetworkImage extends StatelessWidget {
  final String src;
  final File? localImage;
  final String? name;
  final double? height;
  final double? width;
  final BoxFit boxFit;
  const CustomNetworkImage({super.key, this.localImage, required this.src, this.name, this.boxFit = BoxFit.cover, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    if(localImage != null && localImage!.path.isNotEmpty){
      return Image.file(localImage!, fit: boxFit,
        height: height,
        width: width,);
    }

    return Image.network(
        src,
        fit: boxFit,
        height: height,
        width: width,
        errorBuilder: (context, object, stackTrace) {
          return Center(
            child: name != null ? Text(name!.getInitials(), style: Styles.w600(size: 24, color: PickBinColors.primary),) : const Icon(Icons.person),
          );
        }, loadingBuilder: (context, child, loadingProgress) {
      if (loadingProgress != null) {
        if (loadingProgress.cumulativeBytesLoaded ==
            loadingProgress.expectedTotalBytes) {
          return child;
        }
        return Center(
          child: name != null ? Text(name!.getInitials(), style: Styles.w600(size: 24, color: PickBinColors.primary),) : const Icon(Icons.person),
        );
      } else {
        return child;
      }
    });
  }
}*/
