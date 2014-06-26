require "spec_helper"

describe FizzBuzz do
  describe "#build_list" do
    context "with a range of 1..15" do
      list = %w(1 2 Fizz 4 Buzz Fizz 7 8 Fizz Buzz 11 Fizz 13 14 FizzBuzz)

      it "returns #{list}" do
        expect(subject.build_list(1..15)).to eq(list)
      end
    end

    context "with a range of 1..1" do
      it "returns 1" do
        expect(subject.build_list(1..1)).to eq(["1"])
      end
    end

    context "with a range of 3..3" do
      it "returns Fizz" do
        expect(subject.build_list(3..3)).to eq(["Fizz"])
      end
    end
  end
end
