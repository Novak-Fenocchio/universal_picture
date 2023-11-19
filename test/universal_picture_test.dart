import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:universal_picture/universal_picture.dart';

void main() {
  testWidgets('Displays an image from a file', (WidgetTester tester) async {
    final fileImage = File('path/to/image.png');
    await tester.pumpWidget(UniversalPicture(source: fileImage));
    expect(find.byType(Image), findsOneWidget);
  });

  testWidgets('Displays an image from a network', (WidgetTester tester) async {
    await tester.pumpWidget(
        const UniversalPicture(source: 'http://example.com/image.png'));
    expect(find.byType(Image), findsOneWidget);
  });

  testWidgets('Displays an image from memory', (WidgetTester tester) async {
    final memoryImage = Uint8List.fromList([/* bytes de imagen */]);
    await tester.pumpWidget(UniversalPicture(source: memoryImage));
    expect(find.byType(Image), findsOneWidget);
  });

  testWidgets('Displays an SVG image', (WidgetTester tester) async {
    await tester.pumpWidget(const UniversalPicture(source: 'assets/image.svg'));
    expect(find.byType(SvgPicture), findsOneWidget);
  });

  testWidgets('Displays an asset image', (WidgetTester tester) async {
    await tester.pumpWidget(const UniversalPicture(source: 'assets/image.png'));
    expect(find.byType(Image), findsOneWidget);
  });
}
