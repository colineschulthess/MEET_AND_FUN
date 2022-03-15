class PagesController < ApplicationController
  def home
    @experiences = Experience.last(3)
  end
end
