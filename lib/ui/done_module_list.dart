import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:set_state/provider/done_module_provider.dart';

class DoneModuleList extends StatelessWidget {
  final List<String> doneModuleList;

  const DoneModuleList({super.key, required this.doneModuleList});

  @override
  Widget build(BuildContext context) {
    final doneModuleList =
        Provider.of<DoneModuleProvider>(context, listen: false).doneModuleList;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Done Module List'),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return ListTile(
          title: Text(doneModuleList[index]),
        );
      }, itemCount: doneModuleList.length),
    );
  }
}
