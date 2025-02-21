require "test_helper"

class BooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book = Book.create!(title: "Test Book", author: "Test Author", status: "borrowed")
  end

  test "should return a book" do
    patch return_book_url(@book)  # This will use the correct book ID
    assert_redirected_to book_url(@book)
    @book.reload
    assert_equal "available", @book.status
  end
end
