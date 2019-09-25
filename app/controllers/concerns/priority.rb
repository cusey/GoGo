require 'time'

module Priority
  extend ActiveSupport::Concern
  
  def location_time
    return Time.zone.today
  end
end