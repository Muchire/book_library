require "test_helper"

class LendingHistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book = Book.create!(title: "Sample Book", author: "Author Name", status: "available")
  end

  test "should get borrow" do
    post borrow_book_url(@book), params: { borrower_name: "John Doe" }
    assert_redirected_to book_url(@book)
    @book.reload
    assert_equal "borrowed", @book.status
  end

  test "should get return book" do
    @book.update!(status: "borrowed")
    patch return_book_url(@book)
    assert_redirected_to book_url(@book)
    @book.reload
    assert_equal "available", @book.status
  end
end
