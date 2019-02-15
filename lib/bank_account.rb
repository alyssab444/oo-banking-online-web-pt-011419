class BankAccount
  attr_reader :name 
  attr_accessor  :balance, :status
  def initialize(name, balance= 1000)
    @name=name
    @balance= balance 
    @status= "open"
  end 
  def deposit(amount)
    @balance += amount 
  end 
  def display_balance
    "Your balance is $#{@balance}."
  end 
  def valid?
    if @status == "open"
  end 
end
