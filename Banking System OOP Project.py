class Customer:
	def __init__(self, first_name, last_name, address, has_checking=0, has_saving=0, has_loans=0, has_credit_cards=0):
		self.first_name = first_name
		self.last_name = last_name
		self.address = address
		self.has_saving = has_saving
		self.has_checking = has_checking
		self.has_loans = has_loans
		self.has_credit_cards = has_credit_cards

	def change_address(new_address):
		self.address = new_address

	def open_checkings():
		self.has_checking += 1

	def open_savings():
		self.has_saving += 1

	def open_loans():
		self.has_loans += 1

	def open_credit_cards():
		self.has_credit_cards += 1

	def status():
		print('Customer {} {} lives at {} and has {} checking accounts, {} saving accounts, {} loans, {} open credit cards'.format(self.first_name, self.last_name, 
			self.address, self.has_checking, self.has_saving, self.has_loans, self.has_credit_cards))

class Employees:
	def __init__(self, first_name, last_name, address, salary=20000):
		self.first_name = first_name
		self.last_name = last_name
		self.address = address
		self.salary = salary


class Accounts:
	def __init__(self, initial_deposit=0):
		self.balance = initial_deposit

	def withdraw(amount):
		if (self.balance - amount) < 0:
			print('not enough money in the account for this withdraw!')
		else:
			self.balance -= amount

	def deposit(amount):
		self.balance += amount

class Savings_account(Accounts):
	def __init__(self):
		self.interest_rate = 0.1
		self.monthly_withdraw = 4

class Checkings_account(Accounts):
	def __init__(self):
		self.interest_rate = 0.01
		self.monthly_withdraw = 1000

class Services:
	def __init__(self, first_name, last_name):
		self.owner = first_name + ' ' + last_name

class Loans(Services):
	def __init__(self, balance, interest_rate):
		self.balance = balance
		self.interest_rate = interest_rate

class Credit_cards(Services):
	def __init__(self, apr, credit_limit):
		self.apr = apr
		self.credit_limit = credit_limit