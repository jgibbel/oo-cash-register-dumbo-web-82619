class CashRegister
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
  end 
  
  def discount 
    @discount
  end 
  
  attr_accessor :total 
  
  def add_item(name, price, quantity=1)
    @total += price*quantity
    @items << name
  end
  
  def apply_discount
    if @discount > 0
    @total = @total * (100-@discount) / 100 
    "After the discount, the total comes to $#{@total}."
    else "There is no discount to apply."
    end
  
  def items 
    @items 
  end 
    

end 
  
  
  
end 