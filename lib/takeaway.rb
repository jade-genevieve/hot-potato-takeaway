class Takeaway
  attr_reader :menu, :orders

  def initialize
    @menu = [
      { dish: 1, name: "Jacket Potato", price: 2.00 },
      { dish: 2, name: "Baked Beans", price: 1.10 },
      { dish: 3, name: "Chilli Beans", price: 1.10 },
    ]
    @orders = []
  end

  def view_menu
    @menu.each { |dish| puts "#{dish[:dish]} - #{dish[:name]}: #{dish[:price]}" }
  end

  def order(*dishes)
    order = Order.new(*dishes)
    # dishes.each { |dish|
    #   puts dish.to_i
    # }
    @orders.push(order)
  end
end

# t = Takeaway.new
# t.order("1", "2", "3")
