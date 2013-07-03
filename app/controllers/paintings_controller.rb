class PaintingsController < ApplicationController

  def index
    @paintings = Painting.all
  end

  def new
    @painting = Painting.new #this displays the form
  end

  def create
    painting = Painting.create(params[:painting]) #create and write painting to database.
    redirect_to(painting)

  end

  def show
    @painting = Painting.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
    painting = Painting.find(params[:id])
    painting.destroy
    redirect_to(paintings_path)
  end

end