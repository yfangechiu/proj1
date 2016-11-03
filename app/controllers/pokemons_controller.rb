class PokemonsController < ApplicationController
	def capture
		@pokemon = Pokemon.find(params[:id])
		@pokemon.trainer_id = current_trainer.id
		@pokemon.save
		redirect_to '/'
	end

	def damage
		@pokemon = Pokemon.find(params[:id])
		@pokemon.health = @pokemon.health - 10
		@pokemon.save
		if @pokemon.health <= 0
			@pokemon.destroy
		end
		redirect_to trainer_path(id: @pokemon.trainer_id)
	end

	def pokemon_params
		params.require(:pokemon).permit(:name)
	end

	def create
		@pokemon = Pokemon.create(pokemon_params)
		@trainer = current_trainer
		@pokemon.health = 100
		@pokemon.level = 1
		@pokemon.trainer_id = current_trainer.id
		if @pokemon.save
		   redirect_to trainer_path(id: @pokemon.trainer_id)
		else
			flash[:error] = @pokemon.errors.full_messages.to_sentence
			redirect_to pokemons_new_path 
		end
	end

	def new 
		@pokemon = Pokemon.new
	end
end

