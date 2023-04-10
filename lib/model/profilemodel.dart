import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
    required this.status,
    required this.message,
    required this.data,
  });

  int status;
  String message;
  Data data;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        status: json["status"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data.toJson(),
      };
}

class Data {
  Data({
    required this.projectId,
    required this.username,
    required this.name,
    required this.email,
    required this.domain,
    required this.googleAnalytics,
  });

  String projectId;
  String username;
  String name;
  String email;
  String domain;
  String googleAnalytics;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        projectId: json["project_id"],
        username: json["username"],
        name: json["name"],
        email: json["email"],
        domain: json["domain"],
        googleAnalytics: json["google_analytics"],
      );

  Map<String, dynamic> toJson() => {
        "project_id": projectId,
        "username": username,
        "name": name,
        "email": email,
        "domain": domain,
        "google_analytics": googleAnalytics,
      };
}
