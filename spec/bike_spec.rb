require "bike"

describe Bike do
  it {is_expected.to respond_to :working?}
end

describe "reporting broken bike" do
  it "can be reported as broken" do
    subject.report_broken
    expect(subject.broken).to be_broken
  end
end
