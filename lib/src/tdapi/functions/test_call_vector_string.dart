part of '../tdapi.dart';

class TestCallVectorString extends TdFunction {
  List<String> x;
  dynamic extra;

  /// Returns the received vector of strings; for testing only. This is an offline method. Can be called before authorization. 
  /// [x] Vector of strings to return
  TestCallVectorString({this.x});

  /// Parse from a json
  TestCallVectorString.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "x": this.x.map((i) => i).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'testCallVectorString';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}