import 'package:commax/src/config/config.dart';
import 'package:commax/src/core/core.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class DropdownTextFieldComponent extends StatefulWidget {
  const DropdownTextFieldComponent({
    required this.onValueChange,
    super.key,
    this.height,
    this.width,
    this.dropdownItems = const <String>[],
    this.hintText,
    this.initialValue,
  });

  final double? height;
  final double? width;
  final String? hintText;
  final void Function(String?) onValueChange;
  final String? initialValue;
  final List<String> dropdownItems;

  @override
  State<DropdownTextFieldComponent> createState() =>
      _DropdownTextFieldComponentState();
}

class _DropdownTextFieldComponentState
    extends State<DropdownTextFieldComponent> {
  String? dropdownValue;

  @override
  void initState() {
    if (widget.initialValue != null &&
        widget.dropdownItems.contains(widget.initialValue)) {
      dropdownValue = widget.initialValue;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const decoration = InputDecoration(
      isDense: true,
      contentPadding: EdgeInsets.zero,
      border: InputBorder.none,
    );

    final buttonStyleData = ButtonStyleData(
      height: widget.height ?? 45,
      width: widget.width,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black38),
        borderRadius: BorderRadius.circular(kBorderRadius),
      ),
    );

    const iconStyleData = IconStyleData(
      icon: Icon(
        Icons.keyboard_arrow_down,
        color: Colors.black45,
      ),
      iconSize: 22,
    );

    final dropdownStyleData = DropdownStyleData(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kBorderRadius),
        color: Colors.white,
      ),
    );

    return DropdownButtonFormField2(
      decoration: decoration,
      value: dropdownValue,
      hint: Text(
        widget.hintText ?? context.l10n.choose,
        style: kSmallTextStyle.copyWith(color: Colors.black54),
      ),
      items: widget.dropdownItems
          .map(
            (item) => DropdownMenuItem<String>(
              value: item,
              child: Text(
                item,
                style: kNormalTextStyle,
              ),
            ),
          )
          .toList(),
      validator: FormValidators().emptyValidator,
      onChanged: widget.onValueChange,
      buttonStyleData: buttonStyleData,
      iconStyleData: iconStyleData,
      dropdownStyleData: dropdownStyleData,
    );
  }
}
