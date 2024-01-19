import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/bank_item.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class TopupPage extends StatelessWidget {
  const TopupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top Up'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(height: 30),
          Text(
            'Wallet',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Image.asset(
                'assets/img_ewallet.png',
                width: 80,
                height: 55,
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '8008 2208 1996',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                  Text(
                    'Angga Risky',
                    style: greyTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: regular,
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 40),
          Text(
            'Select Bank',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(height: 14),
          const BankItem(
            imgUrl: 'assets/img_bank_bca.png',
            title: 'Bank BCA',
            time: '50 mins',
            isSelected: true,
          ),
          const BankItem(
            imgUrl: 'assets/img_bank_bni.png',
            title: 'Bank BNI',
            time: '50 mins',
          ),
          const BankItem(
            imgUrl: 'assets/img_bank_mandiri.png',
            title: 'Bank Mandiri',
            time: '50 mins',
          ),
          const BankItem(
            imgUrl: 'assets/img_bank_ocbc.png',
            title: 'Bank OCBC',
            time: '50 mins',
          ),
          const SizedBox(height: 12),
          CustomFiledButton(
            title: 'Continue',
            onPressed: () {
              Navigator.pushNamed(context, '/topup-amount');
            },
          ),
        ],
      ),
    );
  }
}
