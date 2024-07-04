import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePicker extends StatelessWidget {
  DatePicker({super.key});

  TextEditingController dateInput = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 50),
            child: TextFormField(
              controller: dateInput,
              readOnly: true,
              onTap: () {
                _showMyDate(context);
              },
            ),
          ),
        ),
      ),
    );
  }

  void _showMyDate(BuildContext context) async {
    DateTime? rawDate = await showDatePicker(
      context: context,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    print(rawDate);

    var formattedDate =
        DateFormat('yyyy - MM - dd').format(rawDate ?? DateTime.now());
    dateInput.text = formattedDate;
    print(formattedDate);
  }
}
