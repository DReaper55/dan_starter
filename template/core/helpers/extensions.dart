/*
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../services/formatter.dart';

extension CharacterValidation on String {
  bool containsUpper() {
    for (var i = 0; i < length; i++) {
      var code = codeUnitAt(i);
      if (code >= 65 && code <= 90) return true;
    }
    return false;
  }

  bool containsLower() {
    for (var i = 0; i < length; i++) {
      var code = codeUnitAt(i);
      if (code >= 97 && code <= 122) return true;
    }
    return false;
  }

  bool containsSpecialChar() {
    for (var i = 0; i < length; i++) {
      var char = this[i];
      if ("#?!@\$ %^&*-".contains(char)) return true;
    }
    return false;
  }

  bool containsNumber() {
    for (var i = 0; i < length; i++) {
      var code = codeUnitAt(i);
      if (code >= 48 && code <= 57) return true;
    }
    return false;
  }
}

extension Initials on String {
  String getInitials() {
    final String text = this;

    String first = '';
    String last = '';

    if (text.contains(' ')) {
      first = text.split(' ').first[0];
      last = text.split(' ').last[0];
    } else {
      first = text[0];
    }

    first = first.capitalizeFirst();

    if(last.isNotEmpty) {
      last = last.capitalizeFirst();
    }

    return '$first$last';
  }

  String greetName() {
    final String text = this;

    String firstName = '';

    if (text.contains(' ')) {
      firstName = text.split(' ').first;
    } else {
      firstName = text;
    }

    firstName = firstName.capitalizeFirst();

    return 'Hello, $firstName';
  }
}

extension FormatNumber on String {
  String addComma() {
    final String text = this;

    final RegExp reg = RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))');
    mathFunc(Match match) => '${match[1]},';

    String formattedText = text.replaceAllMapped(reg, mathFunc);

    return formattedText;
  }

  String removeComma() {
    final String text = this;

    return text.replaceAll(',', '');
  }
}

extension CapitalizeFirst on String {
  String capitalizeFirst() {
    return this[0].toUpperCase() + substring(1);
  }
}

extension ObscuredMail on String {
  String obscuredMail() {
    var newString = '';
    final List<String> emailList = split("");
    for (var i = 0; i < emailList.length; i++) {
      if (i != 0 && emailList[i] != '@' && i < indexOf('.')) {
        emailList[i] = '*';
        newString = emailList.join();
      }
    }
    return newString;
  }
}

extension DateTimeExtension on DateTime {
  String get convertDateHeaderToString => day == DateTime.now().day
      ? "Today"
      : day == (DateTime.now().add(const Duration(days: -1)).day)
          ? "Yesterday"
          : Dateformatter.formatEEyMMMd(this);

  String splitDateOnly([String? pattern]) {
    return toString().split(pattern ?? ' ')[0];
  }

  String getTimeOfDay() {
    final int currentHr = hour;

    if(currentHr >= 5 && currentHr < 12){
      return 'morning 🌤️';
    } else if (currentHr >= 12 && currentHr < 17){
      return 'afternoon ☀️';
    } else if (currentHr >= 17 && currentHr < 24){
      return 'evening 🌒';
    } else {
      return 'day ⛅';
    }
  }

  String toDayAndTimeFormat() {
    final dayOfWeek = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'][weekday % 7];
    final day = this.day.toString().padLeft(2, '0');
    final hour = this.hour > 12 ? this.hour - 12 : this.hour;
    final period = this.hour >= 12 ? 'pm' : 'am';
    final minute = this.minute.toString().padLeft(2, '0');

    return '$dayOfWeek $day; $hour:$minute$period';
  }

  // Import material package then uncomment
  String formatDateForMessage(BuildContext context) {
    final dateTime = this;

    // Today
    if(dateTime.day == DateTime.now().day){
      return TimeOfDay.fromDateTime(dateTime).format(context).toString();
    }

    // Yesterday
    if(dateTime.day == (DateTime.now().add(const Duration(days: -1)).day)){
      String time = TimeOfDay.fromDateTime(dateTime).format(context).toString();
      return 'Yesterday at $time';
    }

    return Dateformatter.formatEEyMMMd(dateTime).toString();
  }

  String formatYMMMd() {
    return DateFormat.yMMMd().format(this).toString();
  }

  RichText toTimer(TextStyle numberStyle) {
    final now = DateTime.now();
    final duration = now.difference(this);

    String hours = duration.inHours.toString().padLeft(2, '0');
    String minutes = (duration.inMinutes % 60).toString().padLeft(2, '0');
    String seconds = (duration.inSeconds % 60).toString().padLeft(2, '0');

    if (duration.inHours > 0) {
      return RichText(
        text: TextSpan(
          children: [
            TextSpan(text: hours, style: numberStyle),
            TextSpan(text: 'h:', style: numberStyle),
            TextSpan(text: minutes, style: numberStyle),
            TextSpan(text: 'm', style: numberStyle),
          ],
        ),
      );
    } else {
      return RichText(
        text: TextSpan(
          children: [
            TextSpan(text: minutes, style: numberStyle),
            TextSpan(text: 'm:', style: numberStyle),
            TextSpan(text: seconds, style: numberStyle),
            TextSpan(text: 's', style: numberStyle),
          ],
        ),
      );
    }
  }

}

extension Group<T> on Iterable<T> {
  Groups<K, T> groupBy<K>(Function(T) key) {
    final map = <K, List<T>>{};
    for (final element in this) {
      final keyValue = key(element);
      if (!map.containsKey(keyValue)) {
        map[keyValue] = [];
      }
      map[keyValue]?.add(element);
    }
    return Groups(keys: map.keys.toList(), children: map.values.toList());
  }
}

class Groups<K, T> {
  List<K> keys;
  List<List<T>> children;

  Groups({
    required this.keys,
    required this.children,
  });

  @override
  String toString() {
    return 'Groups{keys: $keys, children: $children}';
  }
}
*/
