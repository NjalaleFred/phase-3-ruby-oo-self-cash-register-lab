class CashRegister
    attr_accessor :total, :discount, :items, :last_transaction
  
    def initialize(discount = 0)
      @total = 0
      @discount = discount
      @items = []
      @last_transaction = 0
    end
  
    def add_item(title, price, quantity = 1)
      self.total += price * quantity
      self.last_transaction = price * quantity
      items.concat([title] * quantity)
    end
  
    def apply_discount
      if discount > 0
        disc = total * discount / 100
        self.total -= disc
        "After the discount, the total comes to $#{total}."
      else
        "There is no discount to apply."
      end
    end
  
    def void_last_transaction
        puts @last_transaction
      self.total -= last_transaction
      self.last_transaction = 0
    end
  end
  