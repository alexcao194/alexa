import 'package:flutter/material.dart';
import 'package:sellar_e_commerce/widgets/filled_field.dart';

import '../generared/assets.dart';
import '../widgets/rounded_button.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).primaryColor,
                      width: 1,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(200),
                    child: Image.asset(
                      Assets.jpgSwitch2,
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Cao Viet Duc",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "alexcao194@gmail.com",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black.withOpacity(0.6),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 40),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      FilledField(
                        label: "Full Name",
                        hint: "Cao Viet Duc",
                      ),
                      SizedBox(height: 20),
                      FilledField(
                        label: "Gender",
                        hint: "Male",
                      ),
                      SizedBox(height: 20),
                      FilledField(
                        label: "Phone",
                        hint: "0123456789",
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    children: [
                      FilledField(
                        label: "Country",
                        hint: "Vietnam",
                      ),
                      SizedBox(height: 20),
                      FilledField(
                        label: "Province",
                        hint: "Hanoi",
                      ),
                      SizedBox(height: 20),
                      FilledField(
                        label: "Address",
                        hint: "Cau Giay",
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Text(
              "Billing Information",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      FilledField(
                        label: "Card Number",
                        hint: "1234 5678 9101 1121",
                      ),
                      SizedBox(height: 20),
                      FilledField(
                        label: "Card Holder",
                        hint: "Cao Viet Duc",
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    children: [
                      FilledField(
                        label: "Expiration Date",
                        hint: "12/21",
                      ),
                      SizedBox(height: 20),
                      FilledField(
                        label: "CVV",
                        hint: "123",
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                RoundedButton(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text("Save Changes", style: TextStyle(color: Colors.black.withOpacity(0.8))),
                  ),
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
