class Transfer
   attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amount)
    @sender= sender 
    @receiver= receiver
    @amount= amount
    @status= "pending"
  end 
  
  def valid?
    if @sender.valid? == true && @receiver.valid? == true && @sender.balance >= @amount 
     return true 
   else 
     return false 
   end 
  end 
  def execute_transaction 
    if self.valid? == true && @status == "pending"
    @sender.balance -= @amount
    @receiver.balance += @amount
    @status = "complete"
  end 
  end 
end
