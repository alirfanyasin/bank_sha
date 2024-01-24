import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class TransferResultItem extends StatelessWidget {
  final String imgUrl;
  final String name;
  final String username;
  final bool isVerified;
  final bool isSelected;

  const TransferResultItem({
    super.key,
    required this.imgUrl,
    required this.name,
    required this.username,
    this.isVerified = false,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 155,
      height: 171,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: whiteColor,
          border: Border.all(
            color: isSelected ? blueColor : whiteColor,
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  imgUrl,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: isVerified
                ? Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 18,
                      height: 18,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: whiteColor,
                      ),
                      child: Icon(
                        Icons.check_circle,
                        size: 17,
                        color: greenColor,
                      ),
                    ),
                  )
                : const SizedBox(),
          ),
          const SizedBox(height: 13),
          Text(
            name,
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
          Text(
            '@$username',
            style: greyTextStyle.copyWith(
              fontSize: 12,
              fontWeight: regular,
            ),
          ),
        ],
      ),
    );
  }
}
