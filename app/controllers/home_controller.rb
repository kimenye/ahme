class HomeController < ApplicationController
  before_filter :authenticate_google_apps_user!
  def index
    @announcements = Announcement.all

    if params.has_key? (:category)
      @posts = Post.joins(:categories).where('categories_posts.category_id = ?', params[:category]).order('posts.created_at desc')
    else
      @posts = Post.order("created_at DESC")
    end
  end
end
