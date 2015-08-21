require "spec_helper"

describe DigitsToText do 
  
  it "works on zero" do
    expect(DigitsToText.new(0).run).to eq "zero"
  end

  it "works on single digit positive integers" do 
    expect(DigitsToText.new(2).run).to eq "two"
    expect(DigitsToText.new(9).run).to eq "nine"
    expect(DigitsToText.new(4).run).to eq "four"
  end

  it "works on double digit positive integers below 20" do 
    expect(DigitsToText.new(11).run).to eq "eleven"
    expect(DigitsToText.new(13).run).to eq "thirteen"
    expect(DigitsToText.new(19).run).to eq "nineteen"
  end

  it "works on double digit positive integers between 20 and 99" do 
    expect(DigitsToText.new(28).run).to eq "twenty eight"
    expect(DigitsToText.new(60).run).to eq "sixty"
    expect(DigitsToText.new(84).run).to eq "eighty four"
  end

  it "works on triple digit positive integers between 100 and 999" do 
    expect(DigitsToText.new(101).run).to eq "one hundred one"
    expect(DigitsToText.new(212).run).to eq "two hundred twelve"
    expect(DigitsToText.new(700).run).to eq "seven hundred"
  end

  it "works on single digit negative integers" do 
    expect(DigitsToText.new(-8).run).to eq "negative eight"
    expect(DigitsToText.new(-1).run).to eq "negative one"
    expect(DigitsToText.new(-3).run).to eq "negative three"
  end

  it "works on double digit negative integers below 20" do 
    expect(DigitsToText.new(-12).run).to eq "negative twelve"
    expect(DigitsToText.new(-15).run).to eq "negative fifteen"
    expect(DigitsToText.new(-18).run).to eq "negative eighteen"
  end

  it "works on double digit negative integers between 20 and 99" do 
    expect(DigitsToText.new(-35).run).to eq "negative thirty five"
    expect(DigitsToText.new(-88).run).to eq "negative eighty eight"
    expect(DigitsToText.new(-74).run).to eq "negative seventy four"
  end

  it "works on triple digit negative integers between 100 and 999" do 
    expect(DigitsToText.new(-298).run).to eq "negative two hundred ninety eight"
    expect(DigitsToText.new(-500).run).to eq "negative five hundred"
    expect(DigitsToText.new(-712).run).to eq "negative seven hundred twelve"
  end

end