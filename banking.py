# Create an empty list to store accounts as dictionaries
accounts = []

# Main program loop
while True:
    print("\n--------- Welcome to the ABC Banking System ---------")
    print("1. Create a new account")
    print("2. Access an existing account")
    print("3. Exit")
    choice = input("\nEnter your choice (1/2/3): ")

    if choice == "1":
        # Create account
        account_number = len(accounts) + 1
        name = input("Enter your full name: ")
        initial_balance = float(input("Enter the initial deposit amount (Rs.): "))
        new_account = {
            "account_number": account_number,
            "name": name,
            "balance": initial_balance
        }
        accounts.append(new_account)
        print(f"\nAccount created successfully! Your Account Number is: {account_number}")
        print(f"Initial Deposit: Rs.{initial_balance:.2f}")
        
    elif choice == "2":
        # Access existing account
        if len(accounts) == 0:
            print("\nNo accounts available. Please create an account first.")
            continue

        print("\nList of Existing Accounts:")
        for account in accounts:
            print(f"Account Number: {account['account_number']}, Name: {account['name']}")

        account_number = int(input("\nEnter your Account Number to access: "))
        
        # Find the account by number
        current_account = None
        for account in accounts:
            if account['account_number'] == account_number:
                current_account = account
                break

        if current_account is None:
            print("\nInvalid Account Number. Please try again.")
            continue

        print(f"\nWelcome, {current_account['name']}!")

        while True:
            print("\nAccount Options:")
            print("A. Check Balance")
            print("B. Deposit Money")
            print("C. Withdraw Money")
            print("D. Back to Main Menu")
            account_choice = input("\nChoose an option (A/B/C/D): ")

            if account_choice == "A":
                print(f"\nYour current balance is: Rs.{current_account['balance']:.2f}")
            elif account_choice == "B":
                amount = float(input("\nEnter the amount to deposit (Rs.): "))
                if amount > 0:
                    current_account['balance'] += amount
                    print(f"\nDeposited Rs.{amount:.2f}. New balance: Rs.{current_account['balance']:.2f}")
                else:
                    print("\nInvalid deposit amount. Please enter a positive value.")
            elif account_choice == "C":
                print(f"\nYour current balance is: Rs.{current_account['balance']:.2f}")
                
                # Calculate maximum withdrawal amount (balance - Rs. 500)
                max_withdrawable = current_account['balance'] - 500
                print(f"Maximum amount you can withdraw: Rs.{max_withdrawable:.2f}")

                # Ask for the withdrawal amount
                amount = float(input("\nEnter the amount to withdraw (Rs.): "))

                if 0 < amount <= max_withdrawable:
                    current_account['balance'] -= amount
                    print(f"\nWithdrew Rs.{amount:.2f}. New balance: Rs.{current_account['balance']:.2f}")
                else:
                    print("\nInvalid amount. You must maintain a minimum balance of Rs. 500.")
            elif account_choice == "D":
                break
            else:
                print("\nInvalid option. Please try again.")

    elif choice == "3":
        print("\nThank you for using our services!")
        break
    else:
        print("\nInvalid choice. Please select a valid option (1/2/3).")

print("Your session has ended. Have a great day ahead!")
