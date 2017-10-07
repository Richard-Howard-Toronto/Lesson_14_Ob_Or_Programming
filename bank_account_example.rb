
# bank account exercise

class BankAccount

  def initialize (balance, interest_rate)
    @balance = balance
    @interest_rate = interest_rate
  end

  def deposit (deposit)
    @balance += deposit
  end

  def withdraw (amount)
    @balance -= amount
  end

  def gain_interest
    #@balance = @balance + (@balance * @interest_rate)
    @balance *= (1 + @interest_rate)
  end


end

bankaccount1 = BankAccount.new(0,0.06)
bankaccount2 = BankAccount.new(100,0.12)
bankaccount3 = BankAccount.new(200,0.18)

bankaccount1.deposit(100)
bankaccount1.deposit(111)
bankaccount3.withdraw(555)
bankaccount1.gain_interest


p bankaccount1
p bankaccount3
