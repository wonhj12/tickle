import 'package:flutter/material.dart';
import 'package:tickle/utils/enums/dialog_type.dart';
import 'package:tickle/utils/palette.dart';

Future<void> customDialog({
  required BuildContext context,
  required DialogType type,
  required Function() onPressed,
}) async {
  await showDialog(
    context: context,
    builder:
        (context) => Dialog(
          insetPadding: EdgeInsets.symmetric(horizontal: 40),
          child: Container(
            padding: EdgeInsets.all(12),
            width: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 12),

                // 아이콘
                Image.asset(
                  'assets/icons/${type.icon}.png',
                  width: 64,
                  height: 64,
                ),
                const SizedBox(height: 20),

                // 문구
                Text(type.text, style: Palette.headline),

                // 부연 설명 문구
                if (type.detailText != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(type.detailText!, style: Palette.callout),
                  ),
                const SizedBox(height: 24),

                // 취소, 확인
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // 취소
                    TextButton(
                      onPressed: Navigator.of(context).pop,
                      child: Text(
                        '취소',
                        style: Palette.callout.copyWith(
                          color: Palette.onSurfaceVariant,
                        ),
                      ),
                    ),

                    // 삭제
                    TextButton(
                      onPressed: () {
                        onPressed();
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        type.okText,
                        style: Palette.callout.copyWith(
                          fontWeight: FontWeight.w600,
                          color: type.color,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
  );
}
