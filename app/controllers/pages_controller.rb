class PagesController < ApplicationController
  def home
  end

  def action
    cities = City.all
    @city = cities.sample
  end
end
