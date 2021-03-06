part of '../tdapi.dart';

class InputBackground extends TdObject {
  

  /// Contains information about background to set
  InputBackground();

  /// a InputBackground return type can be :
  /// * InputBackgroundLocal
  /// * InputBackgroundRemote
  factory InputBackground.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case InputBackgroundLocal.CONSTRUCTOR:
        return InputBackgroundLocal.fromJson(json);
      case InputBackgroundRemote.CONSTRUCTOR:
        return InputBackgroundRemote.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      
    };
  }

  static const CONSTRUCTOR = 'inputBackground';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputBackgroundLocal extends InputBackground {
  InputFile background;

  /// A background from a local file. 
  /// [background] Background file to use. Only inputFileLocal and inputFileGenerated are supported. The file must be in JPEG format for wallpapers and in PNG format for patterns
  InputBackgroundLocal({this.background});

  /// Parse from a json
  InputBackgroundLocal.fromJson(Map<String, dynamic> json)  {
    this.background = InputFile.fromJson(json['background'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "background": this.background.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputBackgroundLocal';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputBackgroundRemote extends InputBackground {
  int backgroundId;

  /// A background from the server. 
  /// [backgroundId] The background identifier
  InputBackgroundRemote({this.backgroundId});

  /// Parse from a json
  InputBackgroundRemote.fromJson(Map<String, dynamic> json)  {
    this.backgroundId = json['background_id'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "background_id": this.backgroundId,
    };
  }

  static const CONSTRUCTOR = 'inputBackgroundRemote';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}