
class CashRegister
    attr_accessor :discount, :total, :previous_total, :items

    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @items = []
    end

    def add_item item, price, quantity=1
        self.previous_total = self.total
        self.total += price * quantity
        quantity.times{self.items << item}
    end

    def apply_discount 
        if self.discount != 0
            self.total = self.total - (self.total * (20.0 / 100.0))
            "After the discount, the total comes to $#{self.total.round}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction 
        self.total = self.previous_total
    end

end 