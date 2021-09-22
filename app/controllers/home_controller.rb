class HomeController < ApplicationController
  def index
    @agencies  = Agency.all
    @projects = Project.all
  end
end
