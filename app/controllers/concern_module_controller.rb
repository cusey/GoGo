class ConcernModuleController < ApplicationController
  
  include Unit::Priority
  
  def index
    @time = location_time
    @Profiles_List_1 = Profiles[1]
    @Profiles_List_1_1 = Profiles[1][1]
  end
  
  
end
