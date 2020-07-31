import 'package:flutter/material.dart';
import 'package:quiz_app_naturopath/localization/app_localizations.dart';

class FirstStartRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        color: Theme.of(context).primaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Theme.of(context)
                    .textTheme
                    .headline3
                    .withLabel(context, 'sign_in'),
              ),
            ),
            Expanded(
              child: Center(
                child: Theme.of(context)
                    .textTheme
                    .headline3
                    .withLabel(context, 'sign_up'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

extension TextStyleExt on TextStyle {
  Widget withLabel(BuildContext context, String key) {
    return Text(
      AppLocalizations.of(context).translate(key),
      style: this,
    );
  }
}
