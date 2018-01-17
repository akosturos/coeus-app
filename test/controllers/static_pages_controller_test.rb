require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "COEUS"
  end

  test "should get home" do
    get '/'
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get team" do
    get team_path
    assert_response :success
    assert_select "title", "#{@base_title} | Team"
  end

  test "should get projects" do
    get projects_path
    assert_response :success
    assert_select "title", "#{@base_title} | Projects"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "#{@base_title} | Contact"
  end

end
