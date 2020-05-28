class CashRegister
  
  attr_accessor :items, :discount, :total, :last_transaction
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_items(title, amount, quantity=1)
    self.total += amount * quantity
    quantity.times do
      items << title
  end
    self.last_transaction = amount * quantity
  end
  
  def apply_discount
    if discount !=0
  end
  
  def void_last_transaction
  end
  
end