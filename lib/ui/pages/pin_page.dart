import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class PinPage extends StatelessWidget {
  const PinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 58),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sha PIN',
                style: whiteTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semiBold,
                ),
              ),
              const SizedBox(height: 72),
              // NOTE: FORM INPUT PIN
              SizedBox(
                width: 200,
                child: TextFormField(
                  obscureText: true,
                  cursorColor: greyColor,
                  obscuringCharacter: '*',
                  style: whiteTextStyle.copyWith(
                    fontSize: 36,
                    fontWeight: medium,
                    letterSpacing: 14,
                  ),
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: greyColor,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: greyColor,
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 66),

              Wrap(
                direction: Axis.horizontal,
                spacing: 40,
                runSpacing: 40,
                children: [
                  CustomPinButton(
                    number: '1',
                    onTap: () {},
                  ),
                  CustomPinButton(
                    number: '2',
                    onTap: () {},
                  ),
                  CustomPinButton(
                    number: '3',
                    onTap: () {},
                  ),
                  CustomPinButton(
                    number: '4',
                    onTap: () {},
                  ),
                  CustomPinButton(
                    number: '5',
                    onTap: () {},
                  ),
                  CustomPinButton(
                    number: '6',
                    onTap: () {},
                  ),
                  CustomPinButton(
                    number: '7',
                    onTap: () {},
                  ),
                  CustomPinButton(
                    number: '8',
                    onTap: () {},
                  ),
                  CustomPinButton(
                    number: '9',
                    onTap: () {},
                  ),
                  const SizedBox(
                    width: 60,
                    height: 60,
                  ),
                  CustomPinButton(
                    number: '0',
                    onTap: () {},
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: numberBgColor,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.arrow_back,
                          color: whiteColor,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
