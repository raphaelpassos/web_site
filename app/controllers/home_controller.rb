class HomeController < ApplicationController
  def index
    @agencies  = Agency.all
    @Projects = Project.all
  end
end
