import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:bank_sha/ui/widgets/data_package_item.dart';
import 'package:flutter/material.dart';

class DataPackagePage extends StatelessWidget {
  const DataPackagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paket Data'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(height: 30),
          Text(
            'Phone Number',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(height: 14),
          TextFormField(
            style: blackTextStyle,
            decoration: InputDecoration(
              filled: true,
              fillColor: whiteColor,
              contentPadding: const EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 20,
              ),
              hintText: '+62',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: BorderSide.none,
              ),
            ),
          ),
          const SizedBox(height: 40),
          Text(
            'Select Package',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(height: 14),
          Wrap(
            spacing: 25,
            runSpacing: 25,
            children: [
              DataPackageItem(
                package: 10,
                price: 218000,
                onTap: () {},
              ),
              DataPackageItem(
                package: 25,
                price: 420000,
                onTap: () {},
              ),
              DataPackageItem(
                package: 40,
                price: 2500000,
                isSelected: true,
                onTap: () {},
              ),
              DataPackageItem(
                package: 99,
                price: 5000000,
                onTap: () {},
              ),
            ],
          ),
          const SizedBox(height: 55),
          CustomFiledButton(
            title: 'Continue',
            onPressed: () {},
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
