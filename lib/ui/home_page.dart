import 'package:flutter/material.dart';

import '../widget/home_page_widgt/home_body_widgt.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomHomeBody(),

    );
  }
}
