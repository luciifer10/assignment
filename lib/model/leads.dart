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
    required this.leads,
  });

  List<Lead> leads;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        leads: List<Lead>.from(json["leads"].map((x) => Lead.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "leads": List<dynamic>.from(leads.map((x) => x.toJson())),
      };
}

class Lead {
  Lead({
    required this.email,
    required this.name,
    required this.phone,
    required this.subject,
    required this.message,
    required this.domain,
    required this.comments,
    required this.url,
  });

  String email;
  String name;
  String phone;
  String subject;
  String message;
  String domain;
  String comments;
  String url;

  factory Lead.fromJson(Map<String, dynamic> json) => Lead(
        email: json["email"],
        name: json["name"],
        phone: json["phone"],
        subject: json["subject"],
        message: json["message"],
        domain: json["Domain"],
        comments: json["comments"],
        url: json["Url"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "name": name,
        "phone": phone,
        "subject": subject,
        "message": message,
        "Domain": domain,
        "comments": comments,
        "Url": url,
      };
}
