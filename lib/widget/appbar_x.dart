import 'package:flutter/material.dart';

PreferredSizeWidget getAppBar() {
  return AppBar(
    backgroundColor: Colors.blueAccent[400],
    centerTitle: true,
    title: const Text(
      'علیرضا سیف',
      style: TextStyle(
        color: Colors.white,
      ),
    ),
    elevation: 5,
  );
}