import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ideacross/model/wordListModel.dart';

class SearchTextField extends ConsumerWidget {
  final TextEditingController controller;
  const SearchTextField({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 42,
      width: 360,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'コンセプトを入力',
        ),
        onChanged: (word) => ref.read(conceptProvider.notifier).set(word),
      ),
    );
  }
}
