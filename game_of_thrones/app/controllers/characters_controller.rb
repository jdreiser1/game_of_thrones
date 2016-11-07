class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end

  def new
    @character = Character.new
    @houses = House.all.map{ |house| [house.name, house.id] }
  end

  def create
    newChar = Character.new(character_params)
    newChar.house_id = params[:house_id]
    newChar.save
    redirect_to characters_path
  end

  def update
    @character = Character.find(params[:id])
    character = @character.update(character_params)
    @character.house_id = params[:house_id]
    @character.save
    redirect_to character_path(@character)
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy
    redirect_to characters_path
  end

  def edit
    @character = Character.find(params[:id])
    @houses = House.all.map{ |house| [house.name, house.id] }
  end

  def show
    @character = Character.find(params[:id])
  end
  private
  def character_params
    params.require(:character).permit(:name, :age, :img_url)
  end
end
