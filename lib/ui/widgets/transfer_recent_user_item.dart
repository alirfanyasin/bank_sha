import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class TransferRecentUserItem extends StatelessWidget {
  final String imgUrl;
  final String name;
  final String username;
  final bool isVerified;

  const TransferRecentUserItem({
    super.key,
    required this.imgUrl,
    required this.name,
    required this.username,
    this.isVerified = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 18),
      padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
      ),
      child: Row(
        children: [
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  imgUrl,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 14),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
          const Spacer(),
          if (isVerified)
            Row(
              children: [
                Icon(
                  Icons.check_circle,
                  color: greenColor,
                  size: 14,
                ),
                const SizedBox(width: 4),
                Text(
                  'Verified',
                  style: greenTextStyle.copyWith(
                    fontSize: 11,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
