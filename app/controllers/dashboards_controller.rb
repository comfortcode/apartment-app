class DashboardsController < ApplicationController
  def user
    @apartments = current_user.apartments
  end

  def admin
  end
end
