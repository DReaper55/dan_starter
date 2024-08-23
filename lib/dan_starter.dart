import 'dart:io';
import 'package:dcli/dcli.dart';
import 'package:process_run/cmd_run.dart';
import 'package:path/path.dart' as p;


Future<void> handleInitCommand() async {
  final projectName = ask('Project name?', defaultValue: 'my_flutter_project');
  final description = ask('Description?', defaultValue: 'A new Flutter project');

  List<String> platforms = await _selectPlatforms();

  final features = _askForFeatures();

  // Prompt for Output directory
  String projectPath = ask('Output directory:', defaultValue: '${Directory.current.path}\\$projectName');

  // Create the project using Flutter CLI
  var result = await runCmd(
    ProcessCmd('flutter', [
      'create',
      '--project-name',
      projectName,
      '--description',
      description,
      '--platforms',
      platforms.join(','),
      projectPath
    ]),
  );

  print(result.stdout);
  print(result.stderr);

  // Add dependencies
  _addDependencies(projectPath);

  // Create core directories
  // await _createCoreDirectories(projectPath);

  // Create feature directories
  if (features.isNotEmpty) {
    await createFeatureDirectories(projectPath, features);
  }

  // Replace the generated main.dart with the custom one
  _replaceMainDart(projectPath);

  // Copy core files
  _copyUtilsFiles(projectPath);
  _copyHelpersFiles(projectPath);
  _copyConfigFiles(projectPath);
  _copyServicesFiles(projectPath);

  // Copy general widget files
  _copyGeneralWidgetFiles(projectPath);
}

Future<void> _replaceMainDart(String projectPath) async {
// Paths to main.dart files
  final myCliToolDir = p.dirname(Platform.script.toFilePath());
  final customMainDart = p.join(myCliToolDir, 'template', 'main.dart');
  final generatedMainDart = p.join(projectPath, 'lib', 'main.dart');
  final newMainDart = p.join(projectPath, 'lib', 'src', 'main.dart');

  // Delete the generated main.dart file
  if (File(generatedMainDart).existsSync()) {
    delete(generatedMainDart);
  }

  // Copy the custom main.dart to the new location
  copy(customMainDart, newMainDart);

  print('Replaced lib/main.dart with custom template/main.dart');
}

Future<void> _copyUtilsFiles(String projectPath) async {
  final myCliToolDir = p.dirname(Platform.script.toFilePath());
  final templateUtilsDir = Directory(p.join(myCliToolDir, 'template', 'core', 'utils'));
  final destinationDir = p.join(projectPath, 'lib', 'src', 'core', 'utils');

  // Create the destination directory if it doesn't exist
  if (!Directory(destinationDir).existsSync()) {
    Directory(destinationDir).createSync(recursive: true);
  }

  // Copy each file from the template utils directory to the destination directory
  for (var file in templateUtilsDir.listSync()) {
    if (file is File) {
      final destinationPath = p.join(destinationDir, p.basename(file.path));
      copy(file.path, destinationPath);
    }
  }

  print('Copied utils files from template/core/utils to lib/src/core/utils');
}

Future<void> _copyHelpersFiles(String projectPath) async {
  final myCliToolDir = p.dirname(Platform.script.toFilePath());
  final templateUtilsDir = Directory(p.join(myCliToolDir, 'template', 'core', 'helpers'));
  final destinationDir = p.join(projectPath, 'lib', 'src', 'core', 'helpers');

  // Create the destination directory if it doesn't exist
  if (!Directory(destinationDir).existsSync()) {
    Directory(destinationDir).createSync(recursive: true);
  }

  // Copy each file from the template utils directory to the destination directory
  for (var file in templateUtilsDir.listSync()) {
    if (file is File) {
      final destinationPath = p.join(destinationDir, p.basename(file.path));
      copy(file.path, destinationPath);
    }
  }

  print('Copied helpers files from template/core/helpers to lib/src/core/helpers');
}

Future<void> _copyConfigFiles(String projectPath) async {
  final myCliToolDir = p.dirname(Platform.script.toFilePath());
  final templateUtilsDir = Directory(p.join(myCliToolDir, 'template', 'core', 'config', 'exceptions'));
  final destinationDir = p.join(projectPath, 'lib', 'src', 'core', 'config', 'exceptions');

  // Create the destination directory if it doesn't exist
  if (!Directory(destinationDir).existsSync()) {
    Directory(destinationDir).createSync(recursive: true);
  }

  // Copy each file from the template utils directory to the destination directory
  for (var file in templateUtilsDir.listSync()) {
    if (file is File) {
      final destinationPath = p.join(destinationDir, p.basename(file.path));
      copy(file.path, destinationPath);
    }
  }

  print('Copied config files from template/core/config/exceptions to lib/src/core/config/exceptions');
}

Future<void> _copyServicesFiles(String projectPath) async {
  final myCliToolDir = p.dirname(Platform.script.toFilePath());
  final templateUtilsDir = Directory(p.join(myCliToolDir, 'template', 'core', 'services'));
  final destinationDir = p.join(projectPath, 'lib', 'src', 'core', 'services');

  // Create the destination directory if it doesn't exist
  if (!Directory(destinationDir).existsSync()) {
    Directory(destinationDir).createSync(recursive: true);
  }

  // Copy each file from the template utils directory to the destination directory
  for (var file in templateUtilsDir.listSync()) {
    if (file is File) {
      final destinationPath = p.join(destinationDir, p.basename(file.path));
      copy(file.path, destinationPath);
    }
  }

  print('Copied services files from template/core/services to lib/src/core/services');
}

Future<void> _copyGeneralWidgetFiles(String projectPath) async {
  final myCliToolDir = p.dirname(Platform.script.toFilePath());
  final templateUtilsDir = Directory(p.join(myCliToolDir, 'template', 'general_widgets'));
  final destinationDir = p.join(projectPath, 'lib', 'src', 'general_widgets');

  // Create the destination directory if it doesn't exist
  if (!Directory(destinationDir).existsSync()) {
    Directory(destinationDir).createSync(recursive: true);
  }

  // Copy each file from the template utils directory to the destination directory
  for (var file in templateUtilsDir.listSync()) {
    if (file is File) {
      final destinationPath = p.join(destinationDir, p.basename(file.path));
      copy(file.path, destinationPath);
    }
  }

  print('Copied widget files files from template/general_widgets to lib/src/general_widgets');
}

Future<void> createFeatureDirectories(String projectPath, List<String> features) async {
  for (var feature in features) {
    String featurePath = '$projectPath/lib/src/features/$feature';

    // Define the folder structure
    List<String> directories = [
      '$featurePath/data/repositories',
      '$featurePath/data/generic-datasources',
      '$featurePath/domain/repositories',
      '$featurePath/domain/entities',
      '$featurePath/domain/use-cases',
      '$featurePath/presentation/pages',
      '$featurePath/presentation/widgets',
      '$featurePath/presentation/notifiers',
      '$featurePath/presentation/widgets',
    ];

    // Create each directory
    for (var dir in directories) {
      await Directory(dir).create(recursive: true);
    }
  }

  print('Feature directories created successfully.');
}

Future<void> _addDependencies(String projectPath) async {
  final pubspecPath = '$projectPath/pubspec.yaml';
  final pubspecFile = File(pubspecPath);

  if (await pubspecFile.exists()) {
    List<String> dependencies = [
      '  equatable: ^2.0.5',
      '  dartz: ^0.10.1',
      '  sqflite: ^2.3.2',
      '  hive_flutter: ^1.1.0',
      '  hooks_riverpod: ^2.5.1',
      '  http: ^1.2.1',
      '  flutter_svg: ^2.0.10+1',
      '  intl: ^0.18.1',
      '  flutter_hooks: ^0.20.5',
      '  flutter_dotenv: ^5.1.0',
      '  nanoid: ^1.0.0',
      '  shared_preferences: ^2.2.2',
      '  flutter_native_splash: ^2.3.10',
    ];

    List<String> lines = await pubspecFile.readAsLines();
    int index = lines.indexWhere((line) => line.trim() == 'dependencies:');
    if (index != -1) {
      lines.insertAll(index + 1, dependencies);
    } else {
      lines.add('dependencies:');
      lines.addAll(dependencies);
    }

    await pubspecFile.writeAsString(lines.join('\n'));

    // Run flutter pub get to install the dependencies
    var result = await runCmd(ProcessCmd('flutter', ['pub', 'get'], workingDirectory: projectPath));

    print(result.stdout);
    print(result.stderr);
  } else {
    print('Error: pubspec.yaml not found in $projectPath');
  }
}

Future<List<String>> _selectPlatforms() async {
  /*List<String> platforms = [
    'android',
    'ios',
    'web',
    'windows',
    'linux',
    'macos'
  ];
  List<bool> selected = List<bool>.filled(platforms.length, false);
  String input = '';

  while (input.toLowerCase() != 'done') {
    print('Please select platforms (type number to toggle, "done" to finish):');

    for (int i = 0; i < platforms.length; i++) {
      print('[${selected[i] ? 'x' : ' '}] ${i + 1}. ${platforms[i]}');
    }

    input = stdin.readLineSync()?.toLowerCase().trim() ?? '';

    if (input == 'done') {
      break;
    }

    int? index = int.tryParse(input);
    if (index != null && index > 0 && index <= platforms.length) {
      selected[index - 1] = !selected[index - 1];
    } else {
      print(
          'Invalid selection. Please enter a number between 1 and ${platforms.length}, or "done" to finish.');
    }
  }

  return [
    for (int i = 0; i < platforms.length; i++)
      if (selected[i]) platforms[i]
  ];*/

  final platforms = ['android', 'ios', 'web', 'windows', 'linux', 'macos'];
  final selected = <String>[];

  for (final platform in platforms) {
    if (confirm('Include $platform?', defaultValue: false)) {
      selected.add(platform);
    }
  }

  return selected;
}

List<String> _askForFeatures() {
  final featuresInput = ask('Enter features (comma-separated):', defaultValue: '');
  final features = featuresInput.split(',').map((s) => s.trim()).where((s) => s.isNotEmpty).toList();

  return features;
}
