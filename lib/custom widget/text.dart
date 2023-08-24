import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:switch_modes/custom%20widget/tiles.dart';

class Tess extends ConsumerWidget {
  const Tess({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarker = ref.watch(darkmodeprovider);
    return Text(
      text,
      style: GoogleFonts.tulpenOne(
          fontSize: 20, color: isDarker ? Colors.white : Colors.black),
    );
  }
}
