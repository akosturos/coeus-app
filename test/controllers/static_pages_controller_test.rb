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
    get static_pages_team_url
    assert_response :success
    assert_select "title", "#{@base_title} | Team"
  end

  test "should get projects" do
    get static_pages_projects_url
    assert_response :success
    assert_select "title", "#{@base_title} | Projects"
  end

  test "should get something else" do
    get '/'
    assert_response :success
  end


end
