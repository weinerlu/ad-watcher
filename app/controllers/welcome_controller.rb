class WelcomeController < ApplicationController
  def index
    @video = Video.new
    @videos = Video.all
  end
end
