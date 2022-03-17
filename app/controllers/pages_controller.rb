class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @experiences_last = Experience.all.last(6)
    @experiences = Experience.all
  end
end
