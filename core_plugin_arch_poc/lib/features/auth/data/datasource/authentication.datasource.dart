import 'package:core_plugin_arch_poc/features/auth/data/datasource/base.authentication.datasource.dart';
import 'package:core_plugin_arch_poc/features/auth/data/models/authorize.model.dart';

final class AuthenticationDataSource extends BaseAuthenticationDataSource {
  @override
  Future<AuthorizeModel> login(String token) async {
    return AuthorizeModel(token: token);
  }

  @override
  Future<void> logout() async {
    return;
  }
}
