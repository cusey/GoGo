class ComponentController < ApplicationController
  def index
    @tasks = Task.all 
  end
end
