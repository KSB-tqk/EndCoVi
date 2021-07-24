class User {
  String uid;
  String mail;
  String userName;
  String gender;
  String address;
  String avatarUrl;
  String bio;

  User(
    this.uid,
    this.mail,
    this.userName,
    this.gender,
    this.address,
    this.avatarUrl,
    this.bio,
  );

  User.fromJson(Map<String, dynamic> json)
      : uid = json['uid'],
        userName = json['username'],
        mail = json['mail'],
        gender = json['gender'],
        address = json['address'],
        avatarUrl = json['avaterUrl'],
        bio = json['bio'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idUser'] = this.uid;
    data['userName'] = this.userName;
    data['mail'] = this.mail;
    data['gender'] = this.gender;
    data['address'] = this.address;
    data['avatarUrl'] = this.avatarUrl;
    data['bio'] = this.bio;
    return data;
  }
}
