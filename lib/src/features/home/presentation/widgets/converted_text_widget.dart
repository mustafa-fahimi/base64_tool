import 'package:base64_tool/src/config/config.dart';
import 'package:base64_tool/src/core/core.dart';
import 'package:base64_tool/src/features/home/presentation/logic/home_providers.dart';
import 'package:base64_tool/src/injection/global_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ConvertedTextWidget extends ConsumerWidget {
  const ConvertedTextWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 55,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kBorderRadius),
          color: Colors.amberAccent.shade400,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Row(
            children: <Widget>[
              SizedBox(
                width: context.deviceWidthFactor(0.6),
                child: SelectableText(
                  ref.watch(convertedInputProvider),
                  style: kMediumBoldTextStyle.copyWith(
                    color: Colors.black87,
                  ),
                  maxLines: 1,
                  showCursor: true,
                ),
              ),
              const Spacer(),
              if (ref.watch(convertedInputProvider).isNotEmpty) ...[
                IconButton(
                  onPressed: () {},
                  visualDensity: VisualDensity.compact,
                  padding: EdgeInsets.zero,
                  icon: const Icon(
                    Icons.save_outlined,
                    size: 22,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () => _onTapCopy(context, ref),
                  visualDensity: VisualDensity.compact,
                  padding: EdgeInsets.zero,
                  icon: const Icon(
                    Icons.copy,
                    size: 22,
                    color: Colors.white,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _onTapCopy(BuildContext context, WidgetRef ref) async {
    ref.read(appHelperProvider).closeSoftKeyboard(context);
    final text = ref.read(convertedInputProvider);
    await Clipboard.setData(ClipboardData(text: text));
    ref.read(appHelperProvider).displayToast(
          context,
          message: context.l10n.text_copied,
        );
  }
}
