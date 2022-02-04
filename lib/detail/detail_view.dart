import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_architecture/detail/controller/detail_controller.dart';

class DetailView extends ConsumerWidget {
  DetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final _detailController = ref.read(detailProvider);

    print('build called');

    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailView'),
      ),
      body: SafeArea(
        child: Builder(builder: (context) {
          print('builder called');
          return Container(
            width: double.infinity,
            height: double.infinity,
            alignment: Alignment.center,
            child: Consumer(builder: (context, ref, _) {
              print('Consumer called');
              final model = ref.watch(detailProvider.select((value) => value.model));
              if (model == null) return const CircularProgressIndicator();
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(model.name),
                  Text(model.address),
                  ElevatedButton(onPressed: _detailController.onReload, child: Text('onReload')),
                  ElevatedButton(onPressed: _detailController.onChange, child: Text('onChange'))
                ],
              );
            }),
          );
        }),
      ),
    );
  }
}
