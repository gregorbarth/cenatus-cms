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


  def edit
    @page = Page.find(params[:id])
  end


  def create
    @page = Page.new(params[:page])

  end


  def update
    @page = Page.find(params[:id])

  end


  def destroy
    @page = Page.find(params[:id])
    @page.destroy

  end
end
