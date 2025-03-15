import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:tickle/utils/app_router.dart';
import 'package:tickle/utils/custom_theme_data.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // .env
  await dotenv.load();

  // Supabase 초기화
  await Supabase.initialize(
    url: dotenv.env['SUPABASE_URL']!,
    anonKey: dotenv.env['SUPABASE_ANON_KEY']!,
  );

  // 카카오 로그인을 위한 sdk 초기화
  KakaoSdk.init(nativeAppKey: dotenv.env['KAKAO_NATIVE_APP_KEY']);

  // 자동 로그인 확인
  if (Supabase.instance.client.auth.currentUser != null) {}

  runApp(const MainApp());
}

// 라우터
final _router = AppRouter.getRouter();

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      theme: CustomThemeData.light,
      debugShowCheckedModeBanner: false,
    );
  }
}
