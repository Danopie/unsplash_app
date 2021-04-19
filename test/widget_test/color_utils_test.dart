import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:unsplash_app/core/utils/color_utils.dart';

void main() {
  testWidgets('colorUtils_should parse_correct color', (tester) async {
    final parsedColor = ColorUtils.fromHex("#FFFFFF");
    expect(parsedColor, Colors.white);
  });
}