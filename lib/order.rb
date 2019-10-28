class Order
  attr_reader :time, :dishes

  def initialize(*dishes)
    @time = Time.new
    @dishes = *dishes
  end
end
