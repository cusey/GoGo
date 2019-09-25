class ConcernModuleController < ApplicationController
  
  include Unit::Priority
  

  def index
    @time = location_time
    @Profiles = Profiles[1]
  end
end
