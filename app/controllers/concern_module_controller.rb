class ConcernModuleController < ApplicationController
  
  include Priority
  
  def index
    @time = location_time
  end
end
