class BankAccount {
  // Public properties
  String accountHolderName;
  String accountNumber;

  // Private property (encapsulation)
  double _balance;

  // Constructor
  BankAccount({
    required this.accountHolderName,
    required this.accountNumber,
    required double balance,
  }) : _balance = balance;

  // Deposit method
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
    }
  }

  // Withdraw method
  bool withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      return true;
    }
    return false;
  }

  // Display account info
  void displayAccountInfo() {
    print(
      'Account Holder: $accountHolderName '
          'Account Number: $accountNumber '
          'Balance: $_balance',
    );
  }

  // Getter for balance (optional, if you need to read it externally)
  double get balance => _balance;
}

void main() {
  // Create two BankAccount objects
  var account1 = BankAccount(
    accountHolderName: 'Rahim',
    accountNumber: '1001',
    balance: 5000,
  );

  var account2 = BankAccount(
    accountHolderName: 'Karim',
    accountNumber: '1002',
    balance: 8000,
  );

  // Display initial info
  account1.displayAccountInfo();

  // Deposit money
  account1.deposit(2000);
  print('After Deposit: Balance: ${account1.balance}');

  // Withdraw money
  account1.withdraw(1500);
  print('After Withdrawal: Balance: ${account1.balance}');

  // Display second account info
  account2.displayAccountInfo();
}