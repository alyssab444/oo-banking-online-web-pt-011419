class Transfer
   attr_accessor :sender, :receiver, :amount, :status
  def initialize(sender, receiver, amount)
    @sender= sender 
    @receiver= receiver
    @amount= amount
    @status= "pending"
  end 
  def valid?
    if @sender.valid? == true && @reciver.valid? == true && @sender.balance == @amount 
    @sender.balance >= @amount
  end 
end
