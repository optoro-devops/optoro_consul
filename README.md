# Description

Installs Consul

# Requirements

## Platform:

*No platforms defined*

## Cookbooks:

* consul (~> 0.7.1)
* optoro_nrpechecks

# Attributes

* `node['consul']['version']` -  Defaults to `0.5.0`.
* `node['consul']['checksums']` -  Defaults to `{ ... }`.
* `node['consul']['bootstrap_expect']` -  Defaults to `5`.
* `node['consul']['servers']` -  Defaults to `[ ... ]`.
* `node['consul']['datacenter']` -  Defaults to `us_east`.
* `node['consul']['enable_syslog']` -  Defaults to `true`.
* `node['consul']['service_mode']` -  Defaults to `cluster`.
* `node['consul']['client_address']` -  Defaults to `0.0.0.0`.
* `node['consul']['serve_ui']` -  Defaults to `true`.

# Recipes

* optoro_consul::default

# License and Maintainer

Maintainer:: Optoro (<devops@optoro.com>)

License:: MIT
