import 'dart:io';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Usage: cfc <feature_name>');
    exit(1);
  }

  final featureName = arguments.first;
  final baseDir = Directory('lib/features/$featureName');

  createStructure(featureName, baseDir);
  print('✅ Feature "$featureName" created.');
}

String toPascalCase(String input) => input
    .split('_')
    .map((word) => word[0].toUpperCase() + word.substring(1))
    .join();

String toCamelCase(String input) {
  final pascal = toPascalCase(input);
  return pascal[0].toLowerCase() + pascal.substring(1);
}

void createStructure(String feature, Directory baseDir) {
  final paths = [
    'data/repo/${feature}_repo_impl.dart',
    'data/datasources/remote/${feature}_remote_datasource.dart',
    'data/datasources/local/${feature}_local_datasource.dart',
    'data/models/${feature}_dto.dart',
    'domain/repo/${feature}_repo.dart',
    'domain/entity/$feature.dart',
    'domain/usecases/', // this can be left empty for now
    'presentation/pages/${feature}_page.dart',
  ];

  for (final path in paths) {
    final fullPath = '${baseDir.path}/$path';
    final file = File(fullPath);

    if (!file.path.endsWith('/')) {
      file.createSync(recursive: true);
      final template = getTemplate(path, feature);
      file.writeAsStringSync(template);
    } else {
      Directory(fullPath).createSync(recursive: true);
    }
  }
}

// Generates the template content based on the path and feature name
String getTemplate(String path, String feature) {
  final className = toPascalCase(feature);

  if (path.contains('repo/') && path.endsWith('_impl.dart')) {
    return '''
import '../../models/${feature}_dto.dart';
import '../../../domain/repo/${feature}_repo.dart';

class ${className}Impl implements ${className}Repo {
  // TODO: implement repository methods
}
''';
  }

  if (path.contains('remote/') && path.endsWith('_remote_datasource.dart')) {
    return '''
class ${className}RemoteDatasource {
  // TODO: implement remote methods
}
''';
  }

  if (path.contains('local/') && path.endsWith('_local_datasource.dart')) {
    return '''
class ${className}LocalDatasource {
  // TODO: implement local methods
}
''';
  }

  if (path.contains('models/') && path.endsWith('_dto.dart')) {
    return '''
import '../../../domain/entity/$feature.dart';

class ${className}Dto extends $className {
  // TODO: implement JSON serialization
}
''';
  }

  if (path.contains('domain/repo/')) {
    return '''
abstract class ${className}Repo {
  // TODO: define abstract methods
}
''';
  }

  if (path.contains('domain/entity/')) {
    return '''
class $className {
  // TODO: define entity fields
}
''';
  }

  if (path.contains('presentation/pages/')) {
    return '''
import 'package:flutter/material.dart';

class ${className}Page extends StatelessWidget {
  const ${className}Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('$className')),
      body: const Center(child: Text('$className Page')),
    );
  }
}
''';
  }

  return '// $path'; // default
}
