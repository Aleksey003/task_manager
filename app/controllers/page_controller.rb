class PageController < ApplicationController
  def task

  end

  def list
	@progects = Progect.all
  end


end
