class CashRegister
attr_accessor :total, :discount, :last_transaction

def initialize(discount = 0)
  @total = 0
  @discount = discount
  @items = []
end

def total
  return @total
end

def add_item(title, price, quantity = 1)

quantity.times do
  @items << title
end

  @total += (price * quantity)

  @last_transaction = price
end

def apply_discount
  if @discount == 0
    return "There is no discount to apply."
  end
  @total -= @total * @discount / 100
  return "After the discount, the total comes to $#{@total}."
end

def void_last_transaction
@items.pop(1)
@total -= @last_transaction

  if @items.size == 0
    @total = 0.0
  end
end

end
