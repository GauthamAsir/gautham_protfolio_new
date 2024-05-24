import 'package:flutter/material.dart';

class AppUtils {

  AppUtils._();

  Widget messageWidget(BuildContext context,
      {String? msg, bool useScaffold = true}) {
    return useScaffold
        ? Scaffold(
      body: _messageWidget(context, msg: msg),
    )
        : _messageWidget(context, msg: msg);
  }

  Widget _messageWidget(BuildContext context, {String? msg}) {
    return Center(
      child: SelectableText(
        (msg ?? 'Something Went Wrong!'),
        style: Theme.of(context)
            .textTheme
            .titleLarge!
            .copyWith(fontWeight: FontWeight.w600, color: Colors.red),
      ),
    );
  }

}

enum SnackType { Error, Warning, Normal }

extension SnackTypeExtension on SnackType {
  String get name {
    switch (this) {
      case SnackType.Error:
        return Colors.red.value.toString();
      case SnackType.Warning:
        return Colors.yellow.shade600.value.toString();
      default:
        return Colors.white38.value.toString();
    }
  }

  void talk() {
    print('meow');
  }
}