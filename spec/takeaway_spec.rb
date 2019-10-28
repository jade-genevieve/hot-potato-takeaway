require "takeaway"

describe Takeaway do
  let(:order) { double :order }

  it { is_expected.to be_an_instance_of Takeaway }

  # As a customer
  # So that I can check if I want to order something
  # I would like to see a list of dishes with prices
  it "has a list of dishes" do
    expect(subject.menu.length).to be > 0
  end

  it "can output the dishes with prices" do
    $stdout = StringIO.new
    subject.view_menu
    $stdout.rewind
    expect($stdout.gets.chomp).to eq("1 - Jacket Potato: 2.0")
  end

  # As a customer
  # So that I can order the meal I want
  # I would like to be able to select some number of several available dishes

  it "outputs the dishes with numbers" do
    expect(subject.menu[0]).to include(:dish => 1)
  end

  it "can store an order of a number of dishes" do
    subject.order("1")
    expect(subject.orders[0]).to be_an_instance_of(Order)
  end

  it "can control which dishes are available" do
  end

  # As a customer
  # So that I can verify that my order is correct
  # I would like to check that the total I have been given matches the sum of the various dishes in my order

  # As a customer
  # So that I am reassured that my order will be delivered on time
  # I would like to receive a text such as "Thank you! Your order was placed and will be delivered before 18:52" after I have ordered

end
