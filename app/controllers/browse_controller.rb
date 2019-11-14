class BrowseController < ApplicationController
  def browse
    @users = Account.all
  end

  def approve
  end

  def decline
  end
end