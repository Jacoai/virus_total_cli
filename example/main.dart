import 'dart:collection';

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
    Queue<String> scanQueue = Queue();
    scanQueue.add(res['check']);

    for (var el in res.rest) {
      scanQueue.add(el);
    }

    bool fileflag;
    for (var el in scanQueue) {
      fileflag = isFile(el);
      if (await databaseClient.containsKey(el)) {
        String key = await databaseClient.getKey(el, fileflag);
        VirusTotalData? virusTotalData = await databaseClient.get(key);
        databaseClient.printDBResult(virusTotalData!);
      } else {
        AnalysisData analysisData = await virusTotalClient.check(el, fileflag);
        await databaseClient.put(el, analysisData);

        databaseClient.printDBResult(
            convertAnalysisDataToVirusTotalData(analysisData, el, fileflag));
      }
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
