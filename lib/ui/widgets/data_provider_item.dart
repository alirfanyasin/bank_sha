import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class DataProviderItem extends StatelessWidget {
  final String imgUrl;
  final String title;
  final bool isAvailable;
  final VoidCallback? onTap;
  final bool? isSelected;
  const DataProviderItem({
    super.key,
    required this.imgUrl,
    required this.title,
    this.isAvailable = true,
    this.onTap,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(22),
      margin: const EdgeInsets.only(bottom: 18),
      width: double.infinity,
      height: 87,
      decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected == true ? blueColor : whiteColor,
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            imgUrl,
            height: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                title,
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              isAvailable
                  ? Text(
                      'Available',
                      style: greyTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: regular,
                      ),
                    )
                  : Text(
                      'Not Available',
                      style: greyTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: regular,
                      ),
                    ),
            ],
          )
        ],
      ),
    );
  }
}
