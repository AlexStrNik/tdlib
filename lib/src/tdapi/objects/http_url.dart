part of '../tdapi.dart';

class HttpUrl extends TdObject {
  String url;
  dynamic extra;

  /// Contains an HTTP URL. 
  /// [url] The URL
  HttpUrl({this.url});

  /// Parse from a json
  HttpUrl.fromJson(Map<String, dynamic> json)  {
    this.url = json['url'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "url": this.url,
    };
  }

  static const CONSTRUCTOR = 'httpUrl';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}