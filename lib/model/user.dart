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
    required this.username,
    required this.name,
    required this.email,
    required this.domain,
    required this.projectId,
    required this.pUniqueId,
  });

  String username;
  String name;
  String email;
  String domain;
  String projectId;
  String pUniqueId;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        username: json["username"],
        name: json["name"],
        email: json["email"],
        domain: json["domain"],
        projectId: json["project_id"],
        pUniqueId: json["p_unique_id"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "name": name,
        "email": email,
        "domain": domain,
        "project_id": projectId,
        "p_unique_id": pUniqueId,
      };
}
