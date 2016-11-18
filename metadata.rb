name 'optoro_consul'
maintainer 'Optoro'
maintainer_email 'devops@optoro.com'
license 'MIT'
description 'Installs Consul'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
issues_url 'https://optoro.atlassian.net/secure/Dashboard.jspa'
source_url 'https://github.com/optoro-devops/optoro_consul'
version '0.1.6'

supports 'ubuntu', '= 14.04'

provides 'optoro_consul::default'
provides 'optoro_consul::client'

recipe 'optoro_consul::default', 'Installs consul server'
recipe 'optoro_consul::client', 'Installs consul client'

depends 'consul', '~> 2.2.0'
depends 'python'
depends 'logrotate'
