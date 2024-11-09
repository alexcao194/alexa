import 'package:flutter/material.dart';

class InfoField extends StatefulWidget {
  final String value;

  const InfoField({super.key, required this.value});

  @override
  State<InfoField> createState() => _InfoFieldState();
}

class _InfoFieldState extends State<InfoField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: widget.value,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          fillColor: Theme.of(context).secondaryHeaderColor,
          filled: true,
        ),
      ),
    );
  }
}

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Account Information",
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Row(
              children: [
                SizedBox(width: 80, child: Text("Name:", textAlign: TextAlign.end)),
                const SizedBox(width: 8),
                Expanded(child: InfoField(value: "Alexa")),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 80, child: Text("Email:", textAlign: TextAlign.end)),
                const SizedBox(width: 8),
                Expanded(child: InfoField(value: "alexcao194@gmail.com")),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 80, child: Text("Gender:", textAlign: TextAlign.end)),
                const SizedBox(width: 8),
                Expanded(child: InfoField(value: "Male")),
                const SizedBox(width: 8),
                SizedBox(width: 80, child: Text("Birthday:", textAlign: TextAlign.end)),
                const SizedBox(width: 8),
                Expanded(child: InfoField(value: "19/04/2003")),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 80, child: Text("Nation:", textAlign: TextAlign.end)),
                const SizedBox(width: 8),
                Expanded(child: InfoField(value: "Vietnam")),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 80, child: Text("Province:", textAlign: TextAlign.end)),
                const SizedBox(width: 8),
                Expanded(child: InfoField(value: "Hanoi")),
                const SizedBox(width: 8),
                SizedBox(width: 80, child: Text("District:", textAlign: TextAlign.end)),
                const SizedBox(width: 8),
                Expanded(child: InfoField(value: "Cau Giay")),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 80, child: Text("Address:", textAlign: TextAlign.end)),
                const SizedBox(width: 8),
                Expanded(child: InfoField(value: "123 Nguyen Trai")),
              ],
            ),
            Text(
              "Paypal Information",
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Row(
              children: [
                SizedBox(width: 80, child: Text("Card Number:", textAlign: TextAlign.end)),
                const SizedBox(width: 8),
                Expanded(child: InfoField(value: "12736871348723645")),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 80, child: Text("Card Holder Name:", textAlign: TextAlign.end)),
                const SizedBox(width: 8),
                Expanded(child: InfoField(value: "Cao Viet Duc")),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 80, child: Text("Expiration Date:", textAlign: TextAlign.end)),
                const SizedBox(width: 8),
                Expanded(child: InfoField(value: "06/27")),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 80, child: Text("Expiration Date:", textAlign: TextAlign.end)),
                const SizedBox(width: 8),
                Expanded(child: InfoField(value: "06/27")),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 80, child: Text("Billing Address:", textAlign: TextAlign.end)),
                const SizedBox(width: 8),
                Expanded(child: InfoField(value: "123 Nguyen Trai, Hanoi, Vietnam")),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 80, child: Text("CCV:", textAlign: TextAlign.end)),
                const SizedBox(width: 8),
                Expanded(child: InfoField(value: "234")),
                const SizedBox(width: 8),
                SizedBox(width: 80, child: Text("Card Type:", textAlign: TextAlign.end)),
                const SizedBox(width: 8),
                Expanded(child: InfoField(value: "Paypal")),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                      shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      padding: WidgetStateProperty.all(
                        EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                      ),
                      backgroundColor: WidgetStateProperty.all(Colors.white.withOpacity(0.8))),
                  child: Text(
                    "Discard",
                    style: TextStyle(color: Theme.of(context).colorScheme.error, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  style: ButtonStyle(
                      shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      padding: WidgetStateProperty.all(
                        EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                      ),
                      backgroundColor: WidgetStateProperty.all(Colors.white.withOpacity(0.8))),
                  child: Text(
                    "Update",
                    style: TextStyle(color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
