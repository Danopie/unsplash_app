import 'package:flutter/cupertino.dart';

extension TextX on Text {
  TextStyle get styleOrNew => this.style ?? TextStyle();

  Text bold() =>
      Text(this.data!, style: styleOrNew.copyWith(fontWeight: FontWeight.bold));

  Text normal() => Text(this.data!,
      style: styleOrNew.copyWith(fontWeight: FontWeight.normal));

  Text medium() =>
      Text(this.data!, style: styleOrNew.copyWith(fontWeight: FontWeight.w500));

  Text light() =>
      Text(this.data!, style: styleOrNew.copyWith(fontWeight: FontWeight.w300));

  Text size(double size) =>
      Text(this.data!, style: styleOrNew.copyWith(fontSize: size));

  Text color(Color color) =>
      Text(this.data!, style: styleOrNew.copyWith(color: color));
}
