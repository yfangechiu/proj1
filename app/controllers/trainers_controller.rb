class TrainersController < ApplicationController
  before_filter :authenticate_trainer!

  def index
    @trainers = Trainer.all
  end

  def show
    @trainer = Trainer.find(params[:id])
    @pokemons = current_trainer.pokemons
  end

 #  def update
	# @trainer = current_trainer
	# @pokemon = Pokemon.new
	# @pokemon.name = :name
	# @pokemon.health = 100
	# @pokemon.level = 1
	# @pokemon.trainer_id = current_trainer.id
	# @pokemon.save
	# redirect_to trainer_path(id: @pokemon.trainer_id)
 #  end

end
