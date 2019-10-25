class Takeaway
  attr_reader :menu

  def initialize
    @menu = [
      "Jacket Potato, 2.00",
      "Baked Beans, 1.00",
      "Chilli Beans, 1.00",
    ]
  end

  def view_menu
    puts @menu
  end
end
