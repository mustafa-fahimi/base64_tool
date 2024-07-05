import 'dart:io';

import 'package:auto_route/annotations.dart';
import 'package:base64_tool/src/config/config.dart';
import 'package:base64_tool/src/features/home/presentation/logic/home_providers.dart';
import 'package:base64_tool/src/features/home/presentation/widgets/converted_text_widget.dart';
import 'package:base64_tool/src/features/home/presentation/widgets/encoding_switch_widget.dart';
import 'package:base64_tool/src/features/shared/components/outlined_text_field_with_title_component.dart';
import 'package:base64_tool/src/features/shared/components/page_decorator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:window_manager/window_manager.dart';

@RoutePage()
class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final _controller = TextEditingController();
  final _focusNode = FocusNode();

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
          size: Size(550, 400),
          center: true,
          backgroundColor: Colors.blue,
          titleBarStyle: TitleBarStyle.normal,
        );
        await windowManager.waitUntilReadyToShow(windowOptions, () async {
          await windowManager.setBrightness(Brightness.light);
          await windowManager.setMaximizable(false);
          await windowManager.setResizable(false);
          await windowManager.show();
          await windowManager.focus();
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return PageDecorator(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 55),
        child: AppBar(
          title: Text(
            context.l10n.app_name,
            style: kHeading6BoldTextStyle.copyWith(color: kPrimaryColor),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                flex: 20,
                child: OutlinedTextFieldWithTitleComponent(
                  controller: _controller,
                  focusNode: _focusNode,
                  hasTitle: false,
                  hintText: context.l10n.encode_hint,
                  onChanged: (value) {
                    ref.read(convertedInputProvider.notifier).convert(value);
                  },
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                flex: 10,
                child: EncodingSwitchWidget(_controller),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const ConvertedTextWidget(),
        ],
      ),
    );
  }
}
