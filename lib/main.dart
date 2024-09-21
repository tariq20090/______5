// programm 1`
void main() {
  // Define a list of students with their names and ages
  List<Map<String, dynamic>> students = [
    {"name": "mubashir", "age": 20},
    {"name": "muzzamil", "age": 22},
    {"name": "tariq", "age": 19},
    {"name": "khalid", "age": 21}
  ];

  // Initialize variables
  int totalAge = 0;
  int countAdults = 0;

  // Loop through each student
  for (var student in students) {
    // Check if student's age is valid (non-negative)
    if (student["age"] >= 0) {
      totalAge += student["age"];

      // Check if student is an adult (age >= 18)
      if (student["age"] >= 18) {
        countAdults++;
        print("${student["name"]} is an adult.");
      } else {
        print("${student["name"]} is not an adult.");
      }
    } else {
      print("Invalid age for ${student["name"]}");
    }
  }

  // Calculate average age
  double averageAge = totalAge / students.length;

  // Print results
  print("\nTotal number of students: ${students.length}");
  print("Number of adults: $countAdults");
  print("Average age: $averageAge");

  // Check if there are more adults than minors
  if (countAdults > students.length / 2) {
    print("\nThere are more adults than minors.");
  } else if (countAdults < students.length / 2) {
    print("\nThere are more minors than adults.");
  } else {
    print("\nThe number of adults and minors is equal.");
  }
//Program 2: Student Grade Calculator



void main() {
  List<Map<String, dynamic>> students = [
    {"name": "mubashir", "marks": 85},
    {"name": "muzzamil", "marks": 90},
    {"name": "khalid", "marks": 78},
    {"name": "tariq", "marks": 92}
  ];

  for (var student in students) {
    if (student["marks"] >= 90) {
      print("${student["name"]} got A grade.");
    } else if (student["marks"] >= 80) {
      print("${student["name"]} got B grade.");
    } else {
      print("${student["name"]} got C grade.");
    }
  }
}
//program 3: Bank Account Manager



void main() {
  List<Map<String, dynamic>> accounts = [
    {"accountNumber": 123, "balance": 1000},
    {"accountNumber": 456, "balance": 500},
    {"accountNumber": 789, "balance": 2000}
  ];

  int targetAccount = 456;
  double amountToDeposit = 500;

  for (var account in accounts) {
    if (account["accountNumber"] == targetAccount) {
      if (account["balance"] < 0) {
        print("Account is overdrafted.");
      } else {
        account["balance"] += amountToDeposit;
        print("Deposit successful. New balance: ${account["balance"]}");
      }
    }
  }
}
// programm to check the admin loggined or not
void main() {
  String username = "admin";
  String password = "password";
  int attempts = 0;
  int maxAttempts = 5;
  bool loggedIn = false;

  while (!loggedIn && attempts < maxAttempts) {
    print("Login Form");
    print("-----------");
    print("Attempts remaining: ${maxAttempts - attempts}");

    print("Enter username: ");
    String inputUsername = stdin.readLineSync()!;

    print("Enter password: ");
    String inputPassword = stdin.readLineSync()!;

    attempts++;

    if (inputUsername == username && inputPassword == password) {
      print("Login successful!");
      loggedIn = true;
    } else {
      print("Invalid username or password. Try again.");
    }
  }

  if (attempts == maxAttempts) {
    print("Maximum attempts reached. Account locked.");
  }
}
