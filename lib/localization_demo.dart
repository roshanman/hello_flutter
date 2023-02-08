import 'base_demo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LocalizationDemo extends StatefulWidget implements MyDemo {
  @override
  final String title;

  const LocalizationDemo({Key? key, required this.title}) : super(key: key);

  @override
  Widget getDemoPage() {
    return this;
  }

  @override
  State<LocalizationDemo> createState() => _LocalizationDemoState();
}

class _LocalizationDemoState extends State<LocalizationDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(AppLocalizations.of(context).helloWorld, style: const TextStyle(fontSize: 40)),
              Text(AppLocalizations.of(context).hello("Bob"), style: const TextStyle(fontSize: 40)),
              Localizations.override(
                context: context,
                locale: const Locale('en'),
                child: Builder(
                  builder: (context) {
                    // A toy example for an internationalized Material widget.
                    return Text(AppLocalizations.of(context).helloWorld,
                        style: const TextStyle(fontSize: 40));
                  },
                ),
              ),
              Localizations.override(
                context: context,
                locale: const Locale('en'),
                child: Builder(
                  builder: (context) {
                    // A toy example for an internationalized Material widget.
                    return Text(AppLocalizations.of(context).hello("张休明"),
                        style: const TextStyle(fontSize: 40));
                  },
                ),
              ),
              // Add the following code
              Localizations.override(
                context: context,
                locale: const Locale('en'),
                // Using a Builder to get the correct BuildContext.
                // Alternatively, you can create a new widget and Localizations.override
                // will pass the updated BuildContext to the new widget.
                child: Builder(
                  builder: (context) {
                    // A toy example for an internationalized Material widget.
                    return CalendarDatePicker(
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1900),
                      lastDate: DateTime(2100),
                      onDateChanged: (value) {},
                    );
                  },
                ),
              ),
              CalendarDatePicker(
                initialDate: DateTime.now(),
                firstDate: DateTime(1900),
                lastDate: DateTime(2100),
                onDateChanged: (value) {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
