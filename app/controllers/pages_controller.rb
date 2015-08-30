class PagesController < ApplicationController

  def index
    @pages = Page.all
  end

  def show
    @page = Page.find(params[:id])
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new(page_params)
    if @page.save
      flash[:notice] = "Page Create succeeds"
      redirect_to(:action => 'index')
    else
      render('new')
    end

  end

  def edit
  end

  def delete
  end
  def destroy
    #code
  end
  private
  def page_params
    params.require(:page).permit(:name, :permalink, :position, :visible)
  end
end
