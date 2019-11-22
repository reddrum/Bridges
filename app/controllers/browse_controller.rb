class BrowseController < ApplicationController
  def browse
    liked_account_ids = Like.where(account_id: current_account.id).map(&:liked_account_id)
    liked_account_ids << current_account.id

    @users = Account.where.not(id: liked_account_ids)
  end

  def matches
    @matches = current_account.matches
  end

  def approve
    account_id = params[:id]
    # user swipes right
    logger.debug "User id for matching is #{account_id}"
    # create like for user
    new_like = Like.new(liked_account_id: account_id)
    new_like.account_id = current_account.id

    if new_like.save
      # check if user already likes us back
      existing_like = Like.where(account_id: account_id, liked_account_id: current_account.id).count
      @they_like_us = existing_like > 0
    else
      # issue saving like - return a warning message
    end
  end

  def decline
    # user swipes left
  end
end