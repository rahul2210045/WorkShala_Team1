import 'package:flutter/material.dart';
import 'package:workshala_csi/core/app_export.dart';

// ignore: must_be_immutable
class FortyfourItemWidget extends StatelessWidget {
  const FortyfourItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 10.h,
          vertical: 3.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          "Full Time",
          style: TextStyle(
            color: appTheme.black900,
            fontSize: 10.fSize,
            fontFamily: 'Mulish',
            fontWeight: FontWeight.w700,
          ),
        ),
        selected: false,
        backgroundColor: Colors.transparent,
        selectedColor: appTheme.black900.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: theme.colorScheme.primary,
            width: 1.h,
          ),
          borderRadius: BorderRadius.circular(
            4.h,
          ),
        ),
        onSelected: (value) {},
      ),
    );
  }
}
