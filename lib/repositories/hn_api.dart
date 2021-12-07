import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../constants.dart';

enum Type { newest, top }

extension on Type {
  Uri get uri {
    switch (this) {
      case Type.newest:
        return Uri.parse('${URL_API}newstories.json');

      case Type.top:
        return Uri.parse('${URL_API}topstories.json');
    }
  }
}
