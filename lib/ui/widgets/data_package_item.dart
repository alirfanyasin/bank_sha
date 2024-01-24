import 'dart:ffi';

import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class DataPackageItem extends StatelessWidget {
  final int package;
  final int price;
  final VoidCallback? onTap;
  final bool? isSelected;

  const DataPackageItem({
    super.key,
    required this.package,
    required this.price,
    this.onTap,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      height: 171,
      decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected == true ? blueColor : whiteColor,
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '${package}GB',
            style: blackTextStyle.copyWith(
              fontSize: 32,
              fontWeight: medium,
            ),
          ),
          Text(
            'Rp $price',
            style: greyTextStyle.copyWith(
              fontSize: 12,
              fontWeight: regular,
            ),
          )
        ],
      ),
    );
  }
}
