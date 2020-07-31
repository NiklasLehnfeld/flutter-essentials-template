import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:flutter_template/model/user.dart';

class FirstStartRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<User>(
        builder: (context, user, child) => Container(
            constraints: BoxConstraints.expand(),
            color: Theme.of(context).primaryColor,
            child: Center(
                child: FaIcon(
              user.isAwesome
                  ? FontAwesomeIcons.thumbsUp
                  : FontAwesomeIcons.thumbsDown,
              size: 200,
            ))),
      ),
    );
  }
}
