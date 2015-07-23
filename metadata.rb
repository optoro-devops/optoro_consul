name 'optoro_consul'
maintainer 'Optoro'
maintainer_email 'devops@optoro.com'
license 'MIT'
description 'Installs Consul'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.0.5'

depends 'consul', '~> 0.7.1'
depends 'optoro_nrpechecks'
depends 'python'
