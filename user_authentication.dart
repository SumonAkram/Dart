class User {
  int id;
  String username;
  String password;

  User(this.id, this.username, this.password);
}

class UserAuthentication {
  List<User> users = [];

  void register(User user) {
    users.add(user);
    print('User "${user.username}" registered successfully.');
  }

  void login(String username, String password) {
    User user = users.firstWhere((u) => u.username == username, orElse: () => null);
    if (user != null && user.password == password) {
      print('User "$username" logged in successfully.');
      // Perform actions after successful login
    } else {
      print('Invalid username or password.');
    }
  }

  // Other methods for user authentication can be added here
}

void main() {
  UserAuthentication auth = UserAuthentication();

  User user1 = User(1, 'john', 'password1');
  User user2 = User(2, 'emma', 'password2');

  auth.register(user1);
  auth.register(user2);

  auth.login('john', 'password1');
  auth.login('emma', 'password3');
}
