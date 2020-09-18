require 'test_helper'

class BookCollectionControllerTest < ActionDispatch::IntegrationTest
  test "should get home_page" do
    get book_collection_home_page_url
    assert_response :success
  end

end
