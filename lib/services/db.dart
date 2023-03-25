import 'package:miabehotel/models/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseServices {
  final CollectionReference usersCollection =
      FirebaseFirestore.instance.collection('users');

  Future saveUser(UserModel user) async {
    try {
      await usersCollection.doc(user.id).set(user.toMap());
    } catch (error) {
      return "Erreur de sauvegarde de l'utilisateur";
    }
  }
}
