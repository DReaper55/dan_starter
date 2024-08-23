import 'package:dan_starter/dan_starter.dart' as dan_starter;

void main(List<String> arguments) async {
  if (arguments.isEmpty) {
    print('No command provided. Use --help for usage information.');
    return;
  }

  final command = arguments[0];

  if (command == 'init') {
    await dan_starter.handleInitCommand();
  } else if (command == '--help' || command == '-h') {
    printHelp();
  } else {
    print('Unknown command. Use --help for usage information.');
  }
}

void printHelp() {
  print('Usage: dan_starter <command> [options]');
  print('');
  print('Commands:');
  print('  init          Initialize a new Flutter project');
  print('');
  print('Options:');
  print('  --help, -h    Show help');
}