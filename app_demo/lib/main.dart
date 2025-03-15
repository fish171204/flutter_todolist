import 'package:app_demo/modal/items.dart';
import 'package:flutter/material.dart';
import 'widget/card_body_widget.dart';
import 'widget/card_modal_bottom.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

final List<DataItems> items = [
  DataItems(id: '1', name: 'Nguyễn Đăng Khoa'),
  DataItems(id: '2', name: 'Nguyễn Kim Dũng'),
  DataItems(id: '3', name: 'Nguyễn Trà Giang'),
  DataItems(id: '4', name: 'Trương Quốc Thái'),
  DataItems(id: '5', name: 'Nguyễn Trần Đoan Thi'),
];

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void _handleAddTask(String name) {
    final newItem = DataItems(id: DateTime.now().toString(), name: name);
    setState(() {
      items.add(newItem);
    });
  }

  void _handleDeleteTask(String id) {
    setState(() {
      items.removeWhere((item) => item.id == id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Thành viên',
            style: TextStyle(fontSize: 40, color: Colors.white),
          ),
          backgroundColor: Colors.blue),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: items
              .map((item) => CardBody(
                    index: items.indexOf(item),
                    item: item,
                    handleDelete: _handleDeleteTask,
                  ))
              .toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return ModalBottom(addTask: _handleAddTask);
              });
        },
        child: const Icon(
          Icons.add,
          size: 30,
        ),
      ),
    );
  }
}
