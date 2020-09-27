class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end
  
  def show
    @animals = Animal.find(params[:id])
  end
  
  def new
    @animal = Animal.new
  end
  
  def edit
    @animal = Animal.find(params[:id])
  end
  
  def create
    @animal = Animal.new(animal_params)
    
    if @animal.save
      redirect_to @animal
    else
      render 'new'
    end
  end
  
  def update
    @animal = Animal.find(params[:id])
    
    if @animal.update(animal_params)
      redirect_to @animal
    else
      render 'edit'
    end
  end
  
  private
  
  def animal_params
    params.require(:animal).permit(:name, :birth, :kind, :gender)
  end
end