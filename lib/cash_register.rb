class CashRegister
  def initialize(discount = "false")
    @total = 0 
    @discount 
  end 
  
  def discount 
    @discount = 20
  end 
  
  attr_accessor :total 
  
  def add_item(name, price, quantity=1)
    @total += price*quantity
  end
  
  def apply_discount
    if @discount
    @total = @total * (100-@discount) / 100 
  end
  end 
end 