class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end
  
  def show
    @animal = Animal.friendly.find(params[:id])
  end
  
  def new
    @animal = Animal.new
  end
  
  def edit
    @animal = Animal.friendly.find(params[:id])
  end
  
  def create
    @animal = Animal.new(animal_params)
    
    respond_to do |format|
      if @animal.save
        format.html { redirect_to @animal, notice: 'Animal was successfully created.'}
      else
        format.html { render :new }
      end
    end
  end
  
  def update
    @animal = Animal.friendly.find(params[:id])
    
    respond_to do |format|
      if @animal.update(animal_params)
        format.html { redirect_to @animal, notice: 'Animal was successfuly updated.'}
      else
        format.html { render :edit}
      end
    end
  end
  
  def destroy
    @animal = Animal.friendly.find(params[:id])
    @animal.destroy
    
    redirect_to animals_path
  end
  
  private
  
  def animal_params
    params.require(:animal).permit(:name, :birth, :kind, :gender)
  end
end