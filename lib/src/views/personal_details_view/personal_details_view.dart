import 'package:flutter/material.dart';

import '../default_view/default_view.dart';

class PersonalDetailsView extends StatefulWidget {
  const PersonalDetailsView({Key? key}) : super(key: key);

  @override
  _PersonalDetailsViewState createState() => _PersonalDetailsViewState();
}

class _PersonalDetailsViewState extends State<PersonalDetailsView> {
  @override
  Widget build(BuildContext context) {
    return const DefaultView(
      headerChildren: [],
      contentChildren: [],
    );
  }
}
