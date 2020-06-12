require 'rubygems'
require 'fog/aws/models/compute/server'

module Fog
  module Compute
    class AWS
      class Server
        def contact_point
          private_ip_address || dns_name || public_ip_address
        end
        
        def name
          tags["Name"] || id
        end
      end
    end
  end
end
