class ComponentController < ApplicationController
  def index
    @tasks = Task.all 
  end
  
  
  def complete
    Task.update_all(completed: false)
    Task.where(id: params[:task_id]).update_all(completed: true)

    redirect_to tasks_path  
  end


end
