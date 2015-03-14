require 'spec_helper'

describe DayFeedback do
  # pending "add some examples to (or delete) #{__FILE__}"
  it "has a valid factory" do
    expect(build(:day_feedback)).to be_valid
  end
  it "is invalid without a title" do
    expect(build(:day_feedback, title: nil)).to have(1).errors_on(:title)
  end
  it "is invalid without text" do
    expect(build(:day_feedback, text: nil)).to have(1).errors_on(:text)
  end
  it "is invalid without a day" do
    expect(build(:day_feedback, day: nil)).to have(1).errors_on(:day)
  end
  it "is invalid without a name" do
    expect(build(:day_feedback, mood: nil)).to have(1).errors_on(:mood)
  end
end
