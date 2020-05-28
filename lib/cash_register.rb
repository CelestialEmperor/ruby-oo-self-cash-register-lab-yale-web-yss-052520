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
      self.total = total * ((100.0 - discount.to.f)/100).to.i
      puts "After the discount, the total comes #{total}"
  end
  
  def void_last_transaction
  end
  
end