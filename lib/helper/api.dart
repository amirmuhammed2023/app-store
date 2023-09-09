import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class api {
  Future<http.Response> get({required String url}) async {
    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
     return response ;
    } else {
      throw Exception(
          "There are an exception in staus code ${response.statusCode}");
    }
  }

  Future<dynamic> post(
      {required String url,
      @required Map<String, String>? body,
      @required Map<String, String>? Token}) async {
   
    Map<String, String> headers = {};
    if (Token != Null) {
      headers.addAll({"Autherization": "Bearer $Token"});
    }
    http.Response response =
        await http.post(Uri.parse("$url"), body: body, headers: headers);

    if (response.statusCode == 200) {
      jsonDecode(response.body);
    } else {
      throw Exception(
          "There are an exception in staus code ${response.statusCode}");
    }
  }


Future<dynamic> put(
      {required String url,
      @required Map<String, String>? body,
      @required Map<String, String>? Token}) async {
   
    Map<String, String> headers = {};
    if (Token != Null) {
      headers.addAll({"Autherization": "Bearer $Token"});
    }
    http.Response response =
        await http.put(Uri.parse("$url"), body: body, headers: headers);

    if (response.statusCode == 200) {
      jsonDecode(response.body);
    } else {
      throw Exception(
          "There are an exception in staus code ${response.statusCode}");
    }
  }

}
