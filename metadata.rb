name 'optoro_consul'
maintainer 'Optoro'
maintainer_email 'devops@optoro.com'
license 'MIT'
description 'Installs Consul'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.0.10'

supports 'ubuntu', '= 14.04'

provides 'optoro_consul::default'
provides 'optoro_consul::client'

recipe 'optoro_consul::default', 'Installs consul server'
recipe 'optoro_consul::client', 'Installs consul client'

depends 'consul', '~> 0.7.1'
depends 'optoro_nrpechecks'
depends 'python'
depends 'logrotate'
