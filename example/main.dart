import 'package:args/args.dart';
import 'package:virus_total_cli/src/functions/is_file.dart';
import 'package:virus_total_cli/virus_total_cli.dart';

void main(List<String> arguments) async {
  VirusTotalClient virusTotalClient = VirusTotalClient(
    apikey: 'b2a12410feba4baf4507b69b29bea00edc9278af5a1f5a3b6ba4be6b95e80747',
  );

  var parser = ArgParser()
    ..addOption('check', help: 'links or file paths for check')
    ..addFlag('show', help: 'shows data base', negatable: false)
    ..addOption('delete', help: 'link of file path you want to delete');

  if (arguments.isEmpty || arguments.length > 11) {
    print(parser.usage);
    return;
  }

  var res = parser.parse(arguments);

  DatabaseClient databaseClient = DatabaseClient();
  await databaseClient.init();

  if (res.wasParsed('check')) {
    print('Cheking');

    AnalysisData analysisData =
        await virusTotalClient.check(res['check'], isFile(res['check']));
    await databaseClient.put(res['check'], analysisData);

    for (var el in res.rest) {
      AnalysisData analysisData = await virusTotalClient.check(el, isFile(el));
      await databaseClient.put(el, analysisData);
    }
  }
  if (res.wasParsed('show')) {
    databaseClient.show();
  }
  if (res.wasParsed('delete')) {
    databaseClient.deletePath(res['delete']);
    print('Successfully deleted');
  }
}
