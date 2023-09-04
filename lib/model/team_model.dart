import 'dart:convert';

class TeamModel {
  static List<TeamMember> teamMembers = [];

  TeamMember getById(int id) =>
      teamMembers.firstWhere((element) => element.id == id, orElse: null);

  TeamMember getByPosition(int pos) => teamMembers[pos];
}

class TeamMember {
  final int id;
  final String image;
  final String name;
  final String post;
  final String git;
  final String linked;
  final String twitter;

  TeamMember({
    required this.id,
    required this.image,
    required this.name,
    required this.post,
    required this.git,
    required this.linked,
    required this.twitter,
  });

  TeamMember copyWith({
    int? id,
    String? image,
    String? name,
    String? post,
    String? git,
    String? linked,
    String? twitter,
  }) {
    return TeamMember(
      id: id ?? this.id,
      image: image ?? this.image,
      name: name ?? this.name,
      post: post ?? this.post,
      git: git ?? this.git,
      linked: linked ?? this.linked,
      twitter: twitter ?? this.twitter,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'image': image,
      'name': name,
      'post': post,
      'git': git,
      'linked': linked,
      'twitter': twitter,
    };
  }

  factory TeamMember.fromMap(Map<String, dynamic> map) {
    return TeamMember(
      id: map['id'] as int,
      image: map['image'] as String,
      name: map['name'] as String,
      post: map['post'] as String,
      git: map['git'] as String,
      linked: map['linked'] as String,
      twitter: map['twitter'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory TeamMember.fromJson(String source) =>
      TeamMember.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'TeamMember(id: $id, image: $image, name: $name, post: $post, git: $git, linked: $linked, twitter: $twitter)';
  }

  @override
  bool operator ==(covariant TeamMember other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.image == image &&
        other.name == name &&
        other.post == post &&
        other.git == git &&
        other.linked == linked &&
        other.twitter == twitter;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        image.hashCode ^
        name.hashCode ^
        post.hashCode ^
        git.hashCode ^
        linked.hashCode ^
        twitter.hashCode;
  }
}
