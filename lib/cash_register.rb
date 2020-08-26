require 'pry'
class CashRegister
    attr_accessor :total, :price, :discount
    
    def initialize(discount = 0)
        @total = 0
        @discount = discount
    end


    def add_item(title, price, quantity = 1)
        self.total += price * quantity
    end

    def apply_discount

        if @discount == 0
            return "There is no discount to apply."
        else
            @total -= (@discount.to_f / 100 * @total)
            return "After the discount, the total comes to $#{@total.to_i}."
        end
    end

    def items
        array = []
        add_item.each do |item|
            array << item.title
        end
    end



    


end