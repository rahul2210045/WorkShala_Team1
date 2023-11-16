import 'package:flutter/material.dart';
import 'package:workshala_csi/core/app_export.dart';
import 'package:workshala_csi/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class TwentythreeItemWidget extends StatelessWidget {
  TwentythreeItemWidget({
    Key? key,
    this.onTapUploading,
  }) : super(
          key: key,
        );

  VoidCallback? onTapUploading;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CustomOutlinedButton(
        width: 324.h,
        text: "Uploading...",
        onPressed: () {
          onTapUploading!.call();
        },
      ),
    );
  }
}
