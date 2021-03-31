class Account
  attr_reader :name, :balance

  def initialize(name, balance = 100)
    @name = name
    @balance = balance
  end

  private
  def pin
    @pin = 1234
  end

  private
  def pin_error
    "Access denied: incorrect PIN."
  end

  public
  def display_balance(pin_number)
    if pin != pin_number
      puts pin_error
      return
    end

    if pin == pin_number
      puts "Balance: #{@balance}."
      return
    end
  end

  public 
  def withdraw(pin_number, amount)
    if pin != pin_number
      puts pin_error
      return
    end

    if amount > @balance
      puts "Insufficient Balance. Your balance is $#{@balance} only."
      return
    end

    if pin == pin_number
      @balance -= amount
      puts "Withdrew $#{amount}. New balance: $#{@balance}"
      return
    end
  end

  public
  def deposit(pin_number, amount)
    if pin != pin_number
      puts pin_error
      return
    end

    if pin == pin_number
      @balance += amount
      puts "Deposited $#{amount}. New balance: $#{@balance}"
      return
    end
  end
end

# checking_account = Account.new("Franz", 1000 )
# checking_account.withdraw(1234, 2000)
# checking_account.deposit(1234, 2000)
