class DashboardsController < ApplicationController

  def index
    @users = policy_scope(User).all
  end
end
