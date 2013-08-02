class HomeController < ApplicationController
  before_filter :authenticate_google_apps_user!
  def index
    @announcements = Announcement.all
    @posts = Post.order("created_at DESC")
  end
end
