import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice/Features/Auth/Repository/auth_repositery.dart';

final authControllerProvider = Provider(
    (ref) => AuthController(authRepository: ref.read(authRepositoryProvider)));

class AuthController {
  final AuthRepository _authRepository;
  AuthController({required AuthRepository authRepository})
      : _authRepository = authRepository;

  void signInWithGoogle() {
    _authRepository.signInWithGogle();
  }
}
