# A definition resource until the upstream cookbook provider works
actions :create, :destroy
default_action :create

attribute :service_name, kind_of: String, name_attribute: true
attribute :path, kind_of: String, default: '/etc/consul.d'
attribute :type, kind_of: String, default: 'service'
attribute :owner, kind_of: String, default: node['consul']['service_user']
attribute :group, kind_of: String, default: node['consul']['service_group']
attribute :parameters, kind_of: Hash, default: {}
