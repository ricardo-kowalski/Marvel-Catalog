import 'package:flutter/material.dart';
import 'package:marvel_catalog/core/core.dart';

import '../../../data/errors/errors.dart';
import '../../presentation.dart';

class ErrorHandlerWidget extends StatelessWidget {
  final AppException error;
  final VoidCallback onRefresh;

  const ErrorHandlerWidget({
    super.key,
    required this.error,
    required this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    switch (error.runtimeType) {
      case NoConnectionException:
        return CenterImageWidget(
          error: error,
          pathImage: 'assets/images/spider_no_connection.png',
          action: ElevatedButton(
            onPressed: onRefresh,
            child: const Text('Tentar novamente'),
          ),
        );
      case UnknownException:
      case ServerException:
        return CenterImageWidget(
          error: error,
          pathImage: 'assets/images/spider_unknown.png',
          action: ElevatedButton(
            onPressed: onRefresh,
            child: const Text('Tentar novamente'),
          ),
        );
      default:
        return CenterImageWidget(
          error: error,
          pathImage: 'assets/images/spider_oh_no.png',
          action: ElevatedButton(
            onPressed: onRefresh,
            child: const Text('Tentar novamente'),
          ),
        );
    }
  }
}
