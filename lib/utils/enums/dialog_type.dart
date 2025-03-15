import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:tickle/utils/palette.dart';

enum DialogType {
  logout(
    icon: 'lock',
    text: '로그아웃 하시겠어요?',
    okText: '로그아웃',
    color: Palette.primary,
  ),
  deleteUser(
    icon: 'caution',
    text: '정말 계정을 탈퇴하시겠어요?',
    detailText: '모든 데이터가 삭제되며 되돌릴 수 없어요.',
    okText: '탈퇴',
    color: Palette.error,
  );

  final String icon;
  final String text;
  final String? detailText;
  final String okText;
  final Color color;

  const DialogType({
    required this.icon,
    required this.text,
    this.detailText,
    required this.okText,
    required this.color,
  });
}
