actions :create

default_action :create

attribute :service_name, kind_of: String, name_attribute: true
attribute :port, kind_of: Integer
attribute :checks, kind_of: Array, default: []
