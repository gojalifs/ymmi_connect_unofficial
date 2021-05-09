class User{
  String _username, _passwd;

  User(this._username, this._passwd);

  User.map(dynamic obj){
    this._username = obj['username'];
    this._passwd = obj['password'];
  }

  String get username => _username;
  String get password => _passwd;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["username"] = _username;
    map["password"] = _passwd;

    return map;
}

}