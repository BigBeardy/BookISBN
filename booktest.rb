require "minitest/autorun"
require_relative "bookisbn.rb"
class TestISBN < Minitest::Test

     def test_length
        isbn = "1234"
        assert_equal(false, isbn_length(isbn))
    end

    # def test_x_10
    #  assert equal(isbn_fixing_x    index(9))  

end
