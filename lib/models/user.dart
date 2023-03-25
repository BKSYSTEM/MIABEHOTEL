class UserModel {
  final String? pseudo;
  final String? id;
  final String? email;

  UserModel({this.pseudo, this.id, this.email});

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
      pseudo: json['nomUtilisateur'], id: json['id'], email: json['email']);

  Map<String, dynamic> toMap() =>
      {'id': id, 'email': email, 'nomUtilisateur': pseudo};
}
