import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class Internationalization extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Chào mừng đến với ứng dụng đa ngôn ngữ'),
      ),
      body: Center(
        child: Text(
          AppLocalizations.of(context)!.helloWorld,
    ),
    )
    );
  }
}