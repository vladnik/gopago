require 'spec_helper'

describe Book do
  let (:book) { FactoryGirl.create(:book) }
  it "updates status_changed_at when status is changed" do
    book.update_attribute(:title, 'Another Title')
    book.status_changed_at.should_not == book.updated_at
    book.update_attribute(:available, false)
    book.status_changed_at.should == book.updated_at
  end
  describe "#book_is_available" do
    it "validates if book is available" do
      book.available = false
      book.should be_valid
      book.save
      book.available = false
      book.should_not be_valid
    end
  end
  describe "#toggle" do
    it "switches availability" do
      book.available.should be_true
      book.toggle
      book.available.should be_false
      book.toggle
      book.available.should be_true
    end
  end
end
