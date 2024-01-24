import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:intl/intl.dart';

class TransferAmountPage extends StatefulWidget {
  const TransferAmountPage({super.key});

  @override
  State<TransferAmountPage> createState() => _TransferAmountPageState();
}

class _TransferAmountPageState extends State<TransferAmountPage> {
  final TextEditingController amountController =
      TextEditingController(text: '0');

  @override
  void initState() {
    super.initState();
    amountController.addListener(() {
      final text = amountController.text;

      final formattedText = NumberFormat.currency(
        locale: 'id',
        decimalDigits: 0,
        symbol: '',
      ).format(
        int.tryParse(text.replaceAll('.', '')) ?? 0,
      );

      amountController.value = TextEditingValue(
        text: formattedText,
        selection: TextSelection.collapsed(offset: formattedText.length),
      );
    });
  }

  addAmount(String number) {
    if (amountController.text == '0') {
      amountController.text = '';
    }

    setState(() {
      amountController.text = amountController.text + number;
    });
  }

  deleteAmount() {
    if (amountController.text.isNotEmpty) {
      setState(() {
        amountController.text = amountController.text
            .substring(0, amountController.text.length - 1);

        if (amountController.text == '') {
          amountController.text = '0';
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 58),
        children: [
          const SizedBox(height: 50),
          Center(
            child: Text(
              'Total Amount',
              style: whiteTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
            ),
          ),
          const SizedBox(height: 67),
          // NOTE: FORM INPUT PIN
          Align(
            child: SizedBox(
              width: 200,
              child: TextFormField(
                enabled: false,
                controller: amountController,
                cursorColor: greyColor,
                style: whiteTextStyle.copyWith(
                  fontSize: 36,
                  fontWeight: medium,
                  // letterSpacing: 14,
                ),
                decoration: InputDecoration(
                  prefixIcon: Text(
                    'Rp.',
                    style: whiteTextStyle.copyWith(
                      fontSize: 36,
                      fontWeight: medium,
                    ),
                  ),
                  disabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: greyColor,
                    ),
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
                onTap: () {
                  addAmount('1');
                },
              ),
              CustomPinButton(
                number: '2',
                onTap: () {
                  addAmount('2');
                },
              ),
              CustomPinButton(
                number: '3',
                onTap: () {
                  addAmount('3');
                },
              ),
              CustomPinButton(
                number: '4',
                onTap: () {
                  addAmount('4');
                },
              ),
              CustomPinButton(
                number: '5',
                onTap: () {
                  addAmount('5');
                },
              ),
              CustomPinButton(
                number: '6',
                onTap: () {
                  addAmount('6');
                },
              ),
              CustomPinButton(
                number: '7',
                onTap: () {
                  addAmount('7');
                },
              ),
              CustomPinButton(
                number: '8',
                onTap: () {
                  addAmount('8');
                },
              ),
              CustomPinButton(
                number: '9',
                onTap: () {
                  addAmount('9');
                },
              ),
              const SizedBox(
                width: 60,
                height: 60,
              ),
              CustomPinButton(
                number: '0',
                onTap: () {
                  addAmount('0');
                },
              ),
              GestureDetector(
                onTap: () {
                  deleteAmount();
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
          ),

          const SizedBox(height: 50),
          CustomFiledButton(
            title: 'Continue',
            onPressed: () async {
              if (await Navigator.pushNamed(context, '/pin') == true) {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/transfer-success', (route) => false);
              }
            },
          ),
          const SizedBox(height: 25),
          CustomTextButton(
            title: 'Terms & Conditions',
            onPressed: () {},
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
