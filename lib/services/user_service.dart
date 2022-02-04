import 'package:injectable/injectable.dart';
import 'package:riverpod_architecture/data/models/user.dart';

@lazySingleton
class UserService {
  /// Here declare Repo

  Future<User> getUser() async {
    /// Simulation API
    await Future.delayed(const Duration(seconds: 3));
    return User(id: 1, name: 'Amine', address: 'Marrakech');
  }
}
