name 'optoro_consul'
maintainer 'Optoro'
maintainer_email 'devops@optoro.com'
license 'MIT'
description 'Installs Consul'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.0.7'

depends 'consul', '~> 0.11'
depends 'users'
depends 'optoro_nrpechecks'
depends 'python'
