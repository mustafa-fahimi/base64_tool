/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsPngGen {
  const $AssetsPngGen();

  /// File path: assets/png/app_banner.png
  AssetGenImage get appBanner =>
      const AssetGenImage('assets/png/app_banner.png');

  /// File path: assets/png/irancell.png
  AssetGenImage get irancell => const AssetGenImage('assets/png/irancell.png');

  /// File path: assets/png/mci.jpg
  AssetGenImage get mci => const AssetGenImage('assets/png/mci.jpg');

  /// File path: assets/png/no_signal.png
  AssetGenImage get noSignal => const AssetGenImage('assets/png/no_signal.png');

  /// File path: assets/png/rightel.jpg
  AssetGenImage get rightel => const AssetGenImage('assets/png/rightel.jpg');

  /// File path: assets/png/switch_off.png
  AssetGenImage get switchOff =>
      const AssetGenImage('assets/png/switch_off.png');

  /// File path: assets/png/switch_on.png
  AssetGenImage get switchOn => const AssetGenImage('assets/png/switch_on.png');

  /// File path: assets/png/trigger.png
  AssetGenImage get trigger => const AssetGenImage('assets/png/trigger.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        appBanner,
        irancell,
        mci,
        noSignal,
        rightel,
        switchOff,
        switchOn,
        trigger
      ];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/active.svg
  SvgGenImage get active => const SvgGenImage('assets/svg/active.svg');

  /// File path: assets/svg/deactive.svg
  SvgGenImage get deactive => const SvgGenImage('assets/svg/deactive.svg');

  /// File path: assets/svg/semi_active.svg
  SvgGenImage get semiActive => const SvgGenImage('assets/svg/semi_active.svg');

  /// File path: assets/svg/silent.svg
  SvgGenImage get silent => const SvgGenImage('assets/svg/silent.svg');

  /// File path: assets/svg/spy.svg
  SvgGenImage get spy => const SvgGenImage('assets/svg/spy.svg');

  /// List of all assets
  List<SvgGenImage> get values => [active, deactive, semiActive, silent, spy];
}

class Assets {
  Assets._();

  static const $AssetsPngGen png = $AssetsPngGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
