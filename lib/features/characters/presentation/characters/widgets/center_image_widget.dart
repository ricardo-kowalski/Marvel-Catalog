import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:marvel_catalog/core/app_exception.dart';

class CenterImageWidget extends StatelessWidget {
  final AppException error;
  final String pathImage;
  final Widget? action;

  const CenterImageWidget({
    Key? key,
    required this.error,
    required this.pathImage,
    this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              height: 200,
              // 'assets/images/spider_no_connection.png',
              pathImage,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(error.message.toString()),
            ),
            const SizedBox(height: 20),
            action ?? Container(),
          ],
        ),
      ),
    );
  }
}
