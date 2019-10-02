class UploadController < ApplicationController
  def index
    puts "****> uploads#index"
    
    @upload = Upload.new

  end
  
  def create 
    puts "****> uploads#create"
  end
  
  def update
    puts "****> uploads#update"
  end
end
