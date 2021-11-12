import 'package:flutter/material.dart';

import '../default_view/default_view.dart';

class CredentialsView extends StatefulWidget {
  const CredentialsView({Key? key}) : super(key: key);

  @override
  _CredentialsViewState createState() => _CredentialsViewState();
}

class _CredentialsViewState extends State<CredentialsView> {
  @override
  Widget build(BuildContext context) {
    return const DefaultView(
      headerChildren: [
        Center(
          child: Text(
            'Fill in your\ncredentials',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 42,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
      contentChildren: [
        const Spacer(flex: 9,),
        const Spacer(flex: 9,),
      ],
    );
  }
}
