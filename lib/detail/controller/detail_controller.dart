import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';
import 'package:riverpod_architecture/config/di/injection.dart';
import 'package:riverpod_architecture/detail/viewmodel/detail_view_model.dart';
import 'package:riverpod_architecture/services/user_service.dart';
import 'package:riverpod_architecture/utils/safe_change_notifier.dart';

final detailProvider = ChangeNotifierProvider.autoDispose<DetailController>((ref) => getIt<DetailController>());

@injectable
class DetailController extends SafeChangeNotifier {
  DetailViewModel? model;

  /// Services
  UserService userService;

  DetailController(this.userService) {
    print('DetailController created $this');
    _init();
  }

  void _init() async {
    model = null;
    notifyListeners();

    final user = await userService.getUser();
    model = DetailViewModel(name: user.name, address: user.address);
    notifyListeners();
  }

  void onReload() {
    _init();
  }

  void onChange() {
    model = DetailViewModel(name: 'new', address: 'newAddress');
    notifyListeners();
  }
}
