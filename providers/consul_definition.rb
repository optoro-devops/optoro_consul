# Temporary definition until upstream cookbook adds
# proper support for this resource
def why_run_supported?
  true
end

use_inline_resources

action :create do
  config_path = new_resource.path
  config_owner = new_resource.owner
  config_group = new_resource.group
  params = new_resource.parameters
  type = new_resource.type
  service_name = new_resource.service_name

  directory config_path do
    owner config_owner
    group config_group
    recursive true
    action :create
  end

  file "#{config_path}/#{service_name}.json" do
    owner config_owner
    group config_group
    content JSON.pretty_generate(type => params.merge(name: service_name))
  end
end

action :destroy do
  file "#{config_path}/#{service_name}.json" do
    action :delete
  end
end
