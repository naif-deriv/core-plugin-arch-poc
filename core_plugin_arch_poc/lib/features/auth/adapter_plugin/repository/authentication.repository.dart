import 'package:core_plugin_arch_poc/features/auth/data/datasource/authentication.datasource.dart';
import 'package:core_plugin_arch_poc/features/auth/data/datasource/base.authentication.datasource.dart';
import 'package:core_plugin_arch_poc/features/auth/domain/contracts/authentication.contract.dart';
import 'package:core_plugin_arch_poc/features/auth/domain/entities/authorize.entity.dart';

final class AuthenticationRepositoryImplementation
    implements AuthenticationRepositoryContract {
  @override
  BaseAuthenticationDataSource get dataSource => AuthenticationDataSource();

  @override
  Future<AuthorizeEntity> login(String token) async =>
      AuthorizeEntity.fromJson((await dataSource.login(token)).toJson());

  @override
  Future<void> logout() async => dataSource.logout();
}
