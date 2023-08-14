class UserEntity {
  final String? id;
  final String? name;

  const UserEntity({
    this.id,
    this.name,
  });

  @override
  String toString() {
    return 'UserEntity(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserEntity && other.id == id && other.name == name;
  }

  @override
  int get hashCode {
    return id.hashCode ^ name.hashCode;
  }
}
