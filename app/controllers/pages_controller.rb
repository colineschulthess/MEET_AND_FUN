class PagesController < ApplicationController
  def home
    @experiences_last = Experience.all.last(6)
    @experiences = Experience.all
  end
end
