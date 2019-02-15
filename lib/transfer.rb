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
    @sender.balance -= @amount
    @reciever.balance += @amount
    @status = "complete"
  end 
end
