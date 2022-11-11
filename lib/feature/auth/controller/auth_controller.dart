import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whatsapp_real/feature/auth/repository/auth_repository.dart';

final AuthControllerProvider = Provider((ref) {
  final authRepository = ref.watch(AuthRepositoryProvider);
  return AuthController(
    authRepository: authRepository,
    ref: ref,
  );
});

class AuthController {
  final AuthRepository authRepository;
  final ProviderRef ref;

  AuthController({required this.authRepository, required this.ref});

  void saveuserInfoToFirebasestore({
    required BuildContext context,
    required String username,
    required bool mounted,
    required var profileImage,
  }) {
    authRepository.saveuserInfoToFirebasestore(
      ref: ref,
      context: context,
      username: username,
      mounted: mounted,
      profileImage: profileImage,
    );
  }

  void verifySmsCode({
    required BuildContext context,
    required String smsCodeId,
    required String smsCode,
    required bool mounted,
  }) {
    authRepository.verifySmsCode(
        context: context,
        smsCodeId: smsCodeId,
        smsCode: smsCode,
        mounted: mounted);
  }

  void sendSmsCode({
    required BuildContext context,
    required String phoneNumber,
  }) {
    authRepository.sendSmsCode(
      context: context,
      phoneNumber: phoneNumber,
    );
  }
}
