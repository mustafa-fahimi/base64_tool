import 'package:base64_tool/src/config/config.dart';
import 'package:base64_tool/src/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

typedef Validator = String? Function(String? value);

class OutlinedTextFieldWithTitleComponent extends StatelessWidget {
  const OutlinedTextFieldWithTitleComponent({
    required this.title,
    required this.controller,
    required this.focusNode,
    required this.hintText,
    this.maxLength,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.onSaved,
    this.errorText,
    this.suffixIcon,
    this.validator,
    this.counterText = '',
    this.readOnly = false,
    this.viewTitle = true,
    this.minLines = 1,
    this.maxLines = 1,
    this.inputFormatters,
    this.fillColor,
    this.onTap,
    this.onFieldSubmitted,
    this.textAlign,
    super.key,
  });

  final String title;
  final TextEditingController controller;
  final FocusNode focusNode;
  final String hintText;
  final int? maxLength;
  final int minLines;
  final int maxLines;
  final Validator? validator;
  final bool obscureText;
  final String? errorText;
  final Widget? suffixIcon;
  final String counterText;
  final bool readOnly;
  final bool viewTitle;
  final Color? fillColor;
  final TextAlign? textAlign;
  final TextInputType keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final void Function(String?)? onSaved;
  final dynamic Function()? onTap;
  final dynamic Function(String)? onFieldSubmitted;

  @override
  Widget build(BuildContext context) {
    final hintTextStyle = kNormalTextStyle.copyWith(
      color: Colors.black54,
    );
    final outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(kBorderRadius),
      borderSide: const BorderSide(color: Colors.black38),
    );

    final errorStyle = context.theme.textTheme.labelSmall!.copyWith(
      color: kErrorColor,
    );

    const contentPadding = EdgeInsets.symmetric(
      vertical: 12,
      horizontal: 16,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (viewTitle) ...[
          Text(
            title,
            style: kSmallTextStyle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 8),
        ],
        TextFormField(
          controller: controller,
          focusNode: focusNode,
          maxLength: maxLength ?? 200,
          maxLines: maxLines,
          minLines: minLines,
          obscureText: obscureText,
          inputFormatters: inputFormatters,
          textAlignVertical: TextAlignVertical.center,
          textAlign: textAlign ?? TextAlign.start,
          cursorColor: Colors.black54,
          style: kNormalTextStyle,
          decoration: InputDecoration(
            errorText: errorText,
            counterStyle: context.theme.textTheme.labelSmall,
            errorStyle: errorStyle,
            counterText: '',
            hintText: hintText,
            hintStyle: hintTextStyle,
            suffixIcon: suffixIcon,
            border: outlineInputBorder,
            focusedBorder: outlineInputBorder,
            enabledBorder: outlineInputBorder,
            errorBorder: outlineInputBorder,
            focusedErrorBorder: outlineInputBorder,
            contentPadding: contentPadding,
            isDense: true,
            errorMaxLines: 1,
            alignLabelWithHint: true,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            filled: true,
            fillColor: fillColor ?? Colors.white,
          ),
          keyboardType: keyboardType,
          textInputAction: TextInputAction.done,
          autovalidateMode: AutovalidateMode.disabled,
          onSaved: onSaved,
          validator: validator,
          readOnly: readOnly,
          onTap: onTap,
          onFieldSubmitted: onFieldSubmitted,
        ),
      ],
    );
  }
}
