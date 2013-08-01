class HomeController < ApplicationController
  #before_filter :authenticate_user!
  before_filter :authenticate_google_apps_user!
  def index
    @announcements = Announcement.all
    @posts = Post.all
  end
end
