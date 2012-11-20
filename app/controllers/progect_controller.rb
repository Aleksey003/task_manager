class ProgectController < ApplicationController
  def new
	@progect = Progect.new
  end

  def create
	@progect = Progect.new(params[:progect])
  @progect.save
  end
end
