require "order"

describe Order do
  it { is_expected.to be_an_instance_of Order }

  it "can store the date and time" do
    expect(subject.time.hour).to eq(Time.now.hour)
  end
end
