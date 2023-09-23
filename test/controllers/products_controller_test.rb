require 'test_helper'
class ProductControllerTest < ActionDispatch::IntegrationTest
  test 'render a list of products' do
    get products_path
    assert_response :succes
    assert_select '.product'
  end

  test 'render a detailed product page' do
  end
end
