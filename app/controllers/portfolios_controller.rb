class PortfoliosController < ApplicationController
  def show
    @projects = Project.all
  end
end
