class ReportController < ApplicationController
  def index
    
    @workers = Worker.all
    binding.pry
    
  end
end
