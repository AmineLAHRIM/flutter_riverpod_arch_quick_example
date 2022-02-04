import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';
import 'package:riverpod_architecture/config/di/injection.dart';
import 'package:riverpod_architecture/detail/detail_view.dart';

final homeProvider = ChangeNotifierProvider.autoDispose<HomeController>((ref) => getIt<HomeController>());

@injectable
class HomeController extends ChangeNotifier {
  HomeController();

  void goToDetail(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailView(),));
  }
}
