/*
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class DatePickerWidget extends StatefulWidget {
  late String dob;
  DatePickerWidget({
    super.key,
    required this.dob,
  });

  @override
  State<DatePickerWidget> createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  DateTime selectedDate = DateTime.now();
  Future<DateTime?> _selectDateTime(BuildContext context) async {
    final date = await showDatePicker(
      context: context,
      initialDate: DateTime.now().add(const Duration(seconds: 1)),
      firstDate: DateTime(1926),
      lastDate: DateTime(3000),
      helpText: 'Select Date',
      errorFormatText: 'Enter valid date',
      errorInvalidText: 'Enter date in valid range',
    );

    if (date != null) {
      setState(
        () {
          selectedDate = DateTime(
            date.year,
            date.month,
            date.day,
            selectedDate.hour,
            selectedDate.minute,
          );
          widget.dob = DateFormat('dd-MM-yyyy').format(selectedDate);
        },
      );
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        FocusScope.of(context).unfocus();
        await _selectDateTime(context);
      },
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: MyAppColors.white,
          boxShadow: const [
            BoxShadow(
              color: MyAppColors.grey,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 7.0,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(
              left: Dimensions.medium, right: Dimensions.medium),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.dob,
                style: Styles.w500(
                  size: 14,
                ),
              ),
              const Icon(
                Icons.calendar_month,
                color: MyAppColors.primary,
              )
            ],
          ),
        ),
      ),
      // child: AuthTextField(
      //   enabled: false,
      //   hintText: 'DD-MM-YYYY',
      //   controller: widget.dob,
      //   validator: Validators.notEmpty(),
      // ),
    );
  }
}
*/
