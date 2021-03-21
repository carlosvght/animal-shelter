require 'rails_helper'

describe Animal do 
  it "is valid when name, kind and gender are present" do 
    animal = Animal.new( name: 'Beethoven', 
      kind: 'dog', 
      gender: 'male' ) 
      expect(animal).to be_valid 
    end 
  end
  
  
  describe Animal do 
    it "is invalid whan first name are not present" do 
      animal = Animal.new(name: nil) 
      animal.valid?   
      expect(animal.errors[:name]).to include("can't be blank") 
    end 
  end
