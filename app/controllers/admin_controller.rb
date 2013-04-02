class AdminController < ApplicationController
  def index
  	@total_users = Users.count
  end
end
