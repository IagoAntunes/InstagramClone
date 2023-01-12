import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  final String description;
  final String uid;
  final String username;
  final String postId;
  final DateTime datePublished;
  final String postUrl;
  final String profileImage;
  final likes;

  const Post({
    required this.datePublished,
    required this.description,
    required this.likes,
    required this.postId,
    required this.postUrl,
    required this.profileImage,
    required this.uid,
    required this.username,
  });

  Map<String, dynamic> toJson() => {
        "description": description,
        'uid': uid,
        'username': username,
        'postId': postId,
        'datePublished': datePublished,
        'postUrl': postUrl,
        'profileImage': profileImage,
        'likes': likes,
      };

  static Post fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return Post(
      datePublished: snapshot['sdatePublished'],
      description: snapshot['description'],
      likes: snapshot['likes'],
      postId: snapshot['postId'],
      postUrl: snapshot['postUrl'],
      profileImage: snapshot['profileImage'],
      uid: snapshot['uid'],
      username: snapshot['username'],
    );
  }
}
