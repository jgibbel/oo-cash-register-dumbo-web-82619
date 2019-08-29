class CashRegister
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
  end 
  
  def discount 
    @discount
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