class PlayController < ApplicationController


	def game 
		@games = Game.all 
	end 

	def round
		@game = Game.find(params[:game])
		@rounds = @game.rounds 
	end

	def start 
		@game = Game.find(params[:game])
	end

	def question 
		@game = Game.find(params[:game])
		@round = Round.find(params[:round])
		@counter = params[:counter]
		@question = @round.questions[@counter.to_i()]
		#figure out question -> next 
	end

	def answer
		@game = Game.find(params[:game])
		@round = Round.find(params[:round])
		@counter = params[:counter]
		@question = Question.find(params[:question])
	end

end
