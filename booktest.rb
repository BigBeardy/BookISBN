require "minitest/autorun"
require_relative "bookisbn.rb"
class TestISBN < Minitest::Test

     def test_length
        isbn = "1234"
        assert_equal(false, isbn_length(isbn))
    end  

end
