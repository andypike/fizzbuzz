require "rails_helper"

describe "FizzBuzz game" do
  it "shows the homepage" do
    visit root_path
    expect(page).to have_content(/fizzbuzz/i)
  end
end
