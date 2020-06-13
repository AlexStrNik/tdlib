part of '../tdapi.dart';

class LoginUrlInfo extends TdObject {
  

  /// Contains information about an inline button of type inlineKeyboardButtonTypeLoginUrl
  LoginUrlInfo();

  /// a LoginUrlInfo return type can be :
  /// * LoginUrlInfoOpen
  /// * LoginUrlInfoRequestConfirmation
  factory LoginUrlInfo.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case LoginUrlInfoOpen.CONSTRUCTOR:
        return LoginUrlInfoOpen.fromJson(json);
      case LoginUrlInfoRequestConfirmation.CONSTRUCTOR:
        return LoginUrlInfoRequestConfirmation.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      
    };
  }

  static const CONSTRUCTOR = 'loginUrlInfo';
}

class LoginUrlInfoOpen extends LoginUrlInfo {
  String url;
  bool skipConfirm;
  dynamic extra;

  /// An HTTP url needs to be open. 
  /// [url] The URL to open . 
  /// [skipConfirm] True, if there is no need to show an ordinary open URL confirm
  LoginUrlInfoOpen({this.url,
    this.skipConfirm});

  /// Parse from a json
  LoginUrlInfoOpen.fromJson(Map<String, dynamic> json)  {
    this.url = json['url'];
    this.skipConfirm = json['skip_confirm'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "url": this.url,
      "skip_confirm": this.skipConfirm,
    };
  }

  static const CONSTRUCTOR = 'loginUrlInfoOpen';
}

class LoginUrlInfoRequestConfirmation extends LoginUrlInfo {
  String url;
  String domain;
  int botUserId;
  bool requestWriteAccess;
  dynamic extra;

  /// An authorization confirmation dialog needs to be shown to the user. 
  /// [url] An HTTP URL to be opened . 
  /// [domain] A domain of the URL. 
  /// [botUserId] User identifier of a bot linked with the website. 
  /// [requestWriteAccess] True, if the user needs to be requested to give the permission to the bot to send them messages
  LoginUrlInfoRequestConfirmation({this.url,
    this.domain,
    this.botUserId,
    this.requestWriteAccess});

  /// Parse from a json
  LoginUrlInfoRequestConfirmation.fromJson(Map<String, dynamic> json)  {
    this.url = json['url'];
    this.domain = json['domain'];
    this.botUserId = json['bot_user_id'];
    this.requestWriteAccess = json['request_write_access'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "url": this.url,
      "domain": this.domain,
      "bot_user_id": this.botUserId,
      "request_write_access": this.requestWriteAccess,
    };
  }

  static const CONSTRUCTOR = 'loginUrlInfoRequestConfirmation';
}