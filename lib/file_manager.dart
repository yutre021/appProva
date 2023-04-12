import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';

import 'model/user.dart';

class FileManager {
  static FileManager _instance;

  FileManager._internal() {
    _instance = this;
  }

  factory FileManager() => _instance ?? FileManager._internal();

  Future<String> get _directoryPath async {
    Directory directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }


  Future<File> get _jsonFile async {
    final path = await _directoryPath;
    return File('$path/cheetah.json');
  }


  Future<Map<String, dynamic>> readJsonFile() async {
    String fileContent = 'Cheetah Coding';

    File file = await _jsonFile;

    if (await file.exists()) {
      try {
        fileContent = await file.readAsString();
        return json.decode(fileContent);
      } catch (e) {
        print(e);
      }
    }

    return null;
  }

  Future<User> writeJsonFile(var recivedata) async {
    final User user = User(recivedata);

    File file = await _jsonFile;
    await file.writeAsString(json.encode(user));
    return user;
  }

}