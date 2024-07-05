import 'dart:math';

import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:base64_tool/src/config/config.dart';
import 'package:base64_tool/src/features/home/presentation/logic/home_providers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EncodingSwitchWidget extends ConsumerWidget {
  const EncodingSwitchWidget(this.controller);

  final TextEditingController controller;

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
      onChanged: (_) => _onChangedSwitch(ref),
    );
  }

  void _onChangedSwitch(WidgetRef ref) {
    controller.clear();
    ref.watch(encodingSwitchStateProvider.notifier).toggle();
    ref.read(convertedInputProvider.notifier).convert('');
  }
}
