import 'dart:io';
import 'dart:math';

import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:auto_route/annotations.dart';
import 'package:base64_tool/src/config/config.dart';
import 'package:base64_tool/src/core/core.dart';
import 'package:base64_tool/src/features/home/presentation/logic/home_providers.dart';
import 'package:base64_tool/src/features/shared/components/outlined_text_field_with_title_component.dart';
import 'package:base64_tool/src/features/shared/components/page_decorator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
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
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  flex: 20,
                  child: OutlinedTextFieldWithTitleComponent(
                    controller: _controller,
                    focusNode: _focusNode,
                    hasTitle: false,
                    hintText: context.l10n.encode_hint,
                  ),
                ),
                const SizedBox(width: 8),
                const Expanded(
                  flex: 10,
                  child: _EncodingSwitchWidget(),
                ),
              ],
            ),
            const SizedBox(height: 16),
            DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kBorderRadius),
                color: Colors.amberAccent.shade400,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Encoded Data',
                      style: kMediumBoldTextStyle.copyWith(
                        color: Colors.black87,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      visualDensity: VisualDensity.compact,
                      padding: EdgeInsets.zero,
                      icon: const Icon(
                        Icons.copy,
                        size: 22,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _EncodingSwitchWidget extends ConsumerWidget {
  const _EncodingSwitchWidget();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AnimatedToggleSwitch<bool>.dual(
      current: ref.watch(encodingSwitchStateProvider),
      first: true,
      second: false,
      spacing: 5,
      borderWidth: 4,
      height: 47,
      style: const ToggleStyle(
        borderColor: Colors.transparent,
        indicatorColor: Colors.white,
      ),
      customStyleBuilder: (context, local, global) {
        if (global.position <= 0.0) {
          return const ToggleStyle(
            backgroundColor: kSuccessColor,
          );
        }
        return ToggleStyle(
          backgroundGradient: LinearGradient(
            colors: const [kInfoColor, kSuccessColor],
            stops: [
              global.position - (1 - 2 * max(0, global.position - 0.5)) * 0.7,
              global.position + max(0, 2 * (global.position - 0.5)) * 0.7,
            ],
          ),
        );
      },
      iconBuilder: (value) => value
          ? const Icon(
              CupertinoIcons.lock_fill,
              color: kSuccessColor,
              size: 30,
            )
          : const Icon(
              CupertinoIcons.lock_open_fill,
              color: kInfoColor,
              size: 30,
            ),
      textBuilder: (value) => value
          ? Center(
              child: Text(
                context.l10n.encode,
                style: kNormalBoldTextStyle.copyWith(
                  color: Colors.white,
                ),
              ),
            )
          : Center(
              child: Text(
                context.l10n.decode,
                style: kNormalBoldTextStyle.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
      onChanged: (_) =>
          ref.watch(encodingSwitchStateProvider.notifier).toggle(),
    );
  }
}
