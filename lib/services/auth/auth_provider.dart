import 'package:my_notes/services/auth/auth_user.dart';

abstract class AuthProvider {
  AuthUser? get currentUser;
  //It return login in auth
  Future<AuthUser> logIn({
    required String email,
    required String password,
  });

  //it returns register in auth
  Future<AuthUser> createUser({
    required String email,
    required String password,
  });

  //as we logout we do not need to return so void
  Future<void> logOut();

  //we send email verification through firebase on email so we use void
  Future<void> sendEmailVerification();
}
