// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sports_channel_app/list_of_m3u.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ...List.generate(
              listM3u.length,
              (index) {
                return Card(
                  child: ListTile(
                    title: Text(listM3u[index].name!),
                    leading: CircleAvatar(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
