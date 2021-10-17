class HomeController < ApplicationController
  def index
    def index
      @agencies  = Agency.all
      @projects = Project.all
    end
  end
end
