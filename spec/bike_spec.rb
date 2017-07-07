require "bike"

describe Bike do

  it {is_expected.to respond_to(:working?)}

  describe "can report broken bikes" do
    it "reports bike as broken" do
      subject.report_broken
      expect(subject).to be_broken
    end
  end
end
