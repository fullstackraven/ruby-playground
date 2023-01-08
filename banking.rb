#Banking project
#Account object with public methods to display balances and transfer funds, but which rely on private methods 
#to make sure the user’s PIN (personal identification number) is correct before approving transactions.

class Account
  attr_reader :name
  attr_reader :balance
  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end
  
  private
    def pin
      @pin = 1234
    end
  
  private
    def pin_error
      return "Access denied: incorrect PIN."
    end
  
  public
    def display_balance(pin_number)

      if pin_number == pin
        puts "Balance: $#{@balance}"
      else
        puts pin_error
      end
    end
  
  public
    def withdraw(pin_number, amount)
      if pin_number == pin
        @balance -= amount
        puts "Withdrew $#{amount}. New balance: $#{@balance}."
      else
        puts pin_error
      end
    end
  
  public
    def deposit(pin_number, amount)
      if pin_number == pin
        @balance += amount
      else 
        puts pin_error
      end
    end
end

my_account = Account.new("Savings", 1_000_000)
my_account.deposit(1234, 1_000_000)
my_account.display_balance(1234)
my_account.withdraw(1234, 500_000)
my_account.display_balance(1234)
my_account.withdraw(1234, 500_000)
my_account.display_balance(1234)

