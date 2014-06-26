require "spec_helper"

describe FizzBuzzRange do
  describe "validations" do
    it "is valid with valid attributes" do
      range = FizzBuzzRange.new(:min => "1", :max => "10")
      expect(range).to be_valid
    end

    describe "#min" do
      it "cannot be blank" do
        range = FizzBuzzRange.new(:min => "", :max => "10")
        expect(range).not_to be_valid
      end

      it "must be numeric" do
        range = FizzBuzzRange.new(:min => "derp", :max => "10")
        expect(range).not_to be_valid
      end
    end

    describe "#max" do
      it "cannot be blank" do
        range = FizzBuzzRange.new(:min => "1", :max => "")
        expect(range).not_to be_valid
      end

      it "must be numeric" do
        range = FizzBuzzRange.new(:min => "1", :max => "derp")
        expect(range).not_to be_valid
      end
    end
  end
end
