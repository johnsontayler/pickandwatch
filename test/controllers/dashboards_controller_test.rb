require 'test_helper'

class DashboardsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dashboards_index_url
    assert_response :success
  end

  def index
    @tastes = Tastes.all.joins(:movie).where(movie_id: @movie.id)
  end
end
