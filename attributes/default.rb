default['consul']['client_address'] = '0.0.0.0'
default['consul']['version'] = '1.0.6'

default['consul']['config']['enable_syslog'] = false

override!['consul']['service_name'] = 'consul'
