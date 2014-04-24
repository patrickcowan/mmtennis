class StaticPagesController < ApplicationController
  def home
    @relationship = current_user.relationships.build if signed_in?
  end

  def help
  end

  def about
  end

  def contact
  end

  def prog
  end

  def classes
  end

  def announcements
    @relationship = current_user.relationships.build if signed_in?
    @feed_items = current_user.feed.paginate(page: params[:page])
  end
end
