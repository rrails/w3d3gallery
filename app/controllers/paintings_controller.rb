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
    @painting = Painting.find(params[:id]) #get the painting and displays on screen
  end

  def update
    painting = Painting.find(params[:id]) # after you hit submit updates get the item agains
    binding.pry
    painting.update_attributes(params[:painting]) #updates to database.
    redirect_to(painting) #redirect to the same one to show that it has been updated.
  end

  def destroy
    painting = Painting.find(params[:id])
    painting.destroy
    redirect_to(paintings_path)
  end

end