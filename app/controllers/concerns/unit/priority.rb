require 'time'

module Unit
    module Priority
      extend ActiveSupport::Concern
      
        Profiles = {
            2 => [['Admin','Super User'],['Help Desk']],
            1 => [ ['Data Enter','Technician'],['User']],
            0 => []
      
        }
  
      
      def location_time
        return Time.zone.today
      end
    end
end