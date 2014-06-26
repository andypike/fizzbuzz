require "rails_helper"

describe "FizzBuzz game" do
  it "shows the homepage" do
    visit root_path
    expect(page).to have_content(/fizzbuzz/i)
  end

  it "defaults to show numbers from 1 to 10" do
    visit root_path
    expect(page).to have_content(
      "1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz"
    )
  end

  context "valid input" do
    it "shows FizzBuzz numbers between a given range" do
      visit root_path

      fill_in "Min", :with => "1"
      fill_in "Max", :with => "15"
      click_on "Generate"

      expect(page).to have_content(
        "1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz"
      )
    end
  end
end
