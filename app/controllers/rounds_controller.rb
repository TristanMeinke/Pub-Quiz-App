class RoundsController < ApplicationController

	def index
		@rounds = Round.all
		#@round.questions.build
	end

	def show
		@round = Round.find(params[:id])
	end

	def new
		@round = Round.new
		@round.questions.build
		@questions = Question.all 
		@question = Question.new 
	end

	def edit 
		@round = Round.find(params[:id])
	end

	def create
		@round = Round.new(round_params)
		if @round.save 
			redirect_to @round
		else 
			render 'new'
		end 

	end

	def update
		@round = Round.find(params[:id])

		if @round.update(round_params)
			redirect_to @round
		else 
			render 'edit' 
		end
	end

	def destroy
		@round = Round.find(params[:id])
		@round.destroy

		redirect_to rounds_path
	end

	private
		def round_params
			params.require(:round).permit(:title, questions_attributes: [:questiontext, :answertext, :partialanswer, :pointval, :difficulty, :partialpoints, :notes], :question_ids => [])
		end
	

end