class DashboardController < ApplicationController
  before_action :set_sidebar

  def index
  end 

  private

  def set_sidebar
    @show_sidebar = true
  end
end
