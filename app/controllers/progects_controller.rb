class ProgectsController < ApplicationController

  def new
		@progect = Progect.new
  end

  def create
		@progect = Progect.new(params[:progect])
  		if @progect.save
  			redirect_to :root
			else
				render "new"
			end
  end

	def index
  	@progect = Progect.all
	end

	def edit
		@progect = Progect.find(params[:id])
	end

	def	update
		@progect = Progect.find(params[:id])
		if @progect.update_attributes(params[:progect])
		redirect_to :root
		else
		render "edit"
		end
	end

  def destroy
  	@progect = Progect.find(params[:id])
		@progect.destroy
		redirect_to :root
	end

end
