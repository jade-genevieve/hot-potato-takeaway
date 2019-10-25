class Takeaway
  attr_reader :menu

  def initialize
    @menu = [{
      :name => "Jacket Potato", :price => 2.00,
    }, {
      :name => "Baked Beans", :price => 1.00,
    }, {
      :name => "Chilli Beans", :price => 1.00,
    }]
  end

  #   def view_menu
  #     @menu
  #   end
end
