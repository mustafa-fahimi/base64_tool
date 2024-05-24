import 'package:auto_route/annotations.dart';
import 'package:base64_tool/src/features/shared/components/page_decorator.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const PageDecorator(
      body: Center(child: Text('HIIIII')),
    );
  }
}
