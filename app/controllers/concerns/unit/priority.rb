require 'time'

module Unit
    module Priority
      extend ActiveSupport::Concern
      
        Profiles = {
            2 => ['Administration','Super User','Help Desk'], # IT Support Team
            1 => ['Data Enter','Customers','Call Center Users'], # Users of Company Webpage
            0 => ['Accountant', 'Programmer', 'Maintenance Technician'] # Business Organization
         }
  
      
        def location_time
            return Time.zone.today
        end
        
        
    end
end