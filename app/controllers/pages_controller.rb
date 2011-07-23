class PagesController < ApplicationController
  def home
    @seeds = Seed.all
  end

end
