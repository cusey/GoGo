class ConcernModuleController < ApplicationController
  
  include Unit::Priority
  
  def index
    @time = location_time
  end
end
