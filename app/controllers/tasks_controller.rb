class TasksController < ApplicationController

  def new
		@progect = Progect.find(params[:progect_id])
		@task = @progect.tasks.build
  end

	def show
	@progect = Progect.find(params[:progect_id])
	@task    = @progect.tasks.find(params[:id])
	end

	def add
		@progect = Progect.find(params[:progect_id])
      @task  = @progect.tasks.new(:name =>params[:name])
			if @task.save
				flash[:Add] =  @task.name
				redirect_to :root
    	else
					@task.errors.full_messages.each do |msg|
					flash[:error] = msg
			end
			redirect_to :root
		end
	end

  def edit
	@progect = Progect.find(params[:progect_id])
	@task    = @progect.tasks.find(params[:id])
  end

  def destroy
    @progect = Progect.find(params[:progect_id])
		@task = @progect.tasks.find(params[:id])
		@task.delete
		redirect_to :root
  end

  def update
		@progect = Progect.find(params[:progect_id])
		@task = @progect.tasks.find(params[:id])
		@task.update_attributes(params[:task])
		redirect_to :root
  end

	def up_priority
		@tasks = Task.find (params[:id])
		@tasks.add_priority(1)
  	@tasks.save
		redirect_to :root
	end

	def down_priority
		@tasks = Task.find (params[:id])
		@tasks.add_priority(-1)
		@tasks.save
		redirect_to :root
	end

	def create
		@progect = Progect.find(params[:progect_id])
		@task = @progect.tasks.create(params[:task])

		redirect_to :root
	end




end
