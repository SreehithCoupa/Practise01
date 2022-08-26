class TasksController < ApplicationController
  def index

      @tasks=Task.order(:position)
  end
  def new

    @count=Task.count

    @task= Task.new(position: @count + 1 )
  end

  def create

    @task=Task.new(params_req)
    if @task.save
      redirect_to tasks_path
    else
      render('new')
    end
  end

  def show
    @task=Task.find(params[:id].to_i)
  end

  def edit
    @task=Task.find(params[:id].to_i)
  end
  def update
    @task=Task.find(params[:id].to_i)
    if @task.update(params_req)
      redirect_to task_path @task
    else
      render 'edit'
    end
  end

  def delete
    @task=Task.find(params[:id].to_i)
  end
  def destroy
    @task=Task.find(params[:id].to_i)
    @task.destroy
    redirect_to tasks_path
  end



  private
  def params_req
    params.require(:task).permit(
      :name,
      :description,
      :isCompleted,
      :position
    )

  end
end
