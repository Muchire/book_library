require "test_helper"

class BookTest < ActiveSupport::TestCase
  test "should not save book without title" do
    book = Book.new(author: "Author")
    assert_not book.save, "Saved book without a title"
  end
end
