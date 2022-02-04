import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_architecture/home/controller/home_controller.dart';

class HomeView extends ConsumerWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final _homeController = ref.read(homeProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
      ),
      body: SafeArea(
        child: Builder(builder: (context) {
          return Container(
            width: double.infinity,
            height: double.infinity,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () => _homeController.goToDetail(context), child: Text('Open Detail')),
              ],
            )
          );
        }),
      ),
    );
  }
}
