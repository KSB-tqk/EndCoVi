class EndCoViUser {
  late String uid;
  late String mail;
  late String userName;
  late String gender;
  late String address;
  late String avatarUrl;
  late String bio;

  EndCoViUser(
      {this.uid = "",
      this.userName = "",
      this.mail = "",
      this.avatarUrl = "",
      this.gender = "",
      this.address = "",
      this.bio = ""});

  EndCoViUser.fromJson(Map<String, dynamic>? data) {
    uid = data!['uid'];
    userName = data['username'];
    mail = data['mail'];
    gender = data['gender'];
    address = data['address'];
    avatarUrl = data['avatarUrl'];
    bio = data['bio'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uid'] = this.uid;
    data['username'] = this.userName;
    data['mail'] = this.mail;
    data['gender'] = this.gender;
    data['address'] = this.address;
    data['avatarUrl'] = this.avatarUrl;
    data['bio'] = this.bio;
    return data;
  }
}
