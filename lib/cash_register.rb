class CashRegister

    attr_reader :discount

    attr_accessor :total, :last_transaction, :items

    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @items = []
    end

    def add_item(title, price, quantity = 1)
        self.last_transaction = price*quantity
        self.total += (price * quantity)
        quantity.times do
            self.items << title
        end
    end

    def apply_discount
        if discount > 0
            self.total -= ((total*discount)/100)
            "After the discount, the total comes to $#{total}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total -= last_transaction
    end











end
