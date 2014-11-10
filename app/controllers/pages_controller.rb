class PagesController < ApplicationController
  def new
    @page = Page.new
  end

  def create
    @page = Page.new(page_params)
    if @page.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @page = Page.find_by_permalink(params[:permalink])
  end

  def page_params
    params.require(:page).permit(:name, :permalink, :content)
  end
end
