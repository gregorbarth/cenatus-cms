class ContentAreasController < ApplicationController
  
  def index
    @content_area = ContentArea.all
  end
    
  def show
    @content_area = ContentArea.find(params[:id])
  end


  def new
    @content_area = ContentArea.new
  end


  def edit
    @content_area = ContentArea.find(params[:id])
  end


  def create
    @content_area = ContentArea.new(params[:content_area])
  end

  def update
    @content_area = ContentArea.find(params[:id])
  end

  def destroy
    @content_area = ContentArea.find(params[:id])
    @content_area.destroy
  end
end
