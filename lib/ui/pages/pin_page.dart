import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class PinPage extends StatefulWidget {
  const PinPage({super.key});

  @override
  State<PinPage> createState() => _PinPageState();
}

class _PinPageState extends State<PinPage> {
  final TextEditingController pinController = TextEditingController(text: '');

  addPin(String number) {
    if (pinController.text.length < 6) {
      setState(() {
        pinController.text = pinController.text + number;
      });
    }
  }

  deletePin() {
    if (pinController.text.isNotEmpty) {
      setState(() {
        pinController.text =
            pinController.text.substring(0, pinController.text.length - 1);
      });
    }
  }

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
                  enabled: false,
                  controller: pinController,
                  obscureText: true,
                  cursorColor: greyColor,
                  obscuringCharacter: '*',
                  style: whiteTextStyle.copyWith(
                    fontSize: 36,
                    fontWeight: medium,
                    letterSpacing: 14,
                  ),
                  decoration: InputDecoration(
                    disabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: greyColor,
                      ),
                    ),
                    // focusedBorder: UnderlineInputBorder(
                    //   borderSide: BorderSide(
                    //     color: greyColor,
                    //   ),
                    // ),
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
                    onTap: () {
                      addPin('1');
                    },
                  ),
                  CustomPinButton(
                    number: '2',
                    onTap: () {
                      addPin('2');
                    },
                  ),
                  CustomPinButton(
                    number: '3',
                    onTap: () {
                      addPin('3');
                    },
                  ),
                  CustomPinButton(
                    number: '4',
                    onTap: () {
                      addPin('4');
                    },
                  ),
                  CustomPinButton(
                    number: '5',
                    onTap: () {
                      addPin('5');
                    },
                  ),
                  CustomPinButton(
                    number: '6',
                    onTap: () {
                      addPin('6');
                    },
                  ),
                  CustomPinButton(
                    number: '7',
                    onTap: () {
                      addPin('7');
                    },
                  ),
                  CustomPinButton(
                    number: '8',
                    onTap: () {
                      addPin('8');
                    },
                  ),
                  CustomPinButton(
                    number: '9',
                    onTap: () {
                      addPin('9');
                    },
                  ),
                  const SizedBox(
                    width: 60,
                    height: 60,
                  ),
                  CustomPinButton(
                    number: '0',
                    onTap: () {
                      addPin('0');
                    },
                  ),
                  GestureDetector(
                    onTap: () {
                      deletePin();
                    },
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
