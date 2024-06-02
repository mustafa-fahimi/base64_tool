import 'dart:io';

import 'package:auto_route/annotations.dart';
import 'package:base64_tool/src/core/core.dart';
import 'package:base64_tool/src/features/shared/components/outlined_text_field_with_title_component.dart';
import 'package:base64_tool/src/features/shared/components/page_decorator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:window_manager/window_manager.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = TextEditingController();
  final _focusNode = FocusNode();
  List<bool> isSelected = [false, false];

  @override
  void initState() {
    super.initState();
    _windowManagerSetup();
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _windowManagerSetup() {
    if (Platform.isWindows) {
      SchedulerBinding.instance.addPostFrameCallback((_) async {
        const windowOptions = WindowOptions(
          backgroundColor: Colors.white,
          titleBarStyle: TitleBarStyle.normal,
        );
        await windowManager.waitUntilReadyToShow(windowOptions, () async {
          await windowManager.setSize(const Size(550, 400));
          await windowManager.center();
          await windowManager.setMaximizable(false);
          await windowManager.show();
          await windowManager.focus();
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return PageDecorator(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            ToggleButtons(
              borderColor: Colors.black,
              fillColor: Colors.grey,
              borderWidth: 2,
              selectedBorderColor: Colors.black,
              selectedColor: Colors.blue,
              borderRadius: BorderRadius.circular(0),
              isSelected: isSelected,
              onPressed: _onTapToggleButtons,
              children: const <Widget>[
                Icon(Icons.home),
                Icon(Icons.search),
              ],
            ),
            const SizedBox(height: 10),
            OutlinedTextFieldWithTitleComponent(
              controller: _controller,
              focusNode: _focusNode,
              hasTitle: false,
              hintText: 'Enter text to convert...',
            ),
          ],
        ),
      ),
    );
  }

  void _onTapToggleButtons(int index) {
    if (isSelected[index]) return;
    if (index == 0) {
      setState(() {
        isSelected[0] = true;
        isSelected[1] = false;
      });
    } else {
      setState(() {
        isSelected[0] = false;
        isSelected[1] = true;
      });
    }
  }
}
