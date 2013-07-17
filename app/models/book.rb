class Book < ActiveRecord::Base
  validate :book_is_available
  before_update do
    self.status_changed_at = updated_at if available_changed?
  end

  def book_is_available
    errors.add(:base, "book is not available") unless available || available_was
  end

  def toggle
    available ? self.available = false : self.available = true
    save
  end
end