# symplegma-os_bootstrap

[![Build Status](https://travis-ci.org/clusterfrak-dynamics/symplegma-os_bootstrap.svg?branch=master)](https://travis-ci.org/clusterfrak-dynamics/symplegma-os_bootstrap)
[![semantic-release](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg)](https://github.com/semantic-release/semantic-release)

This ansible role bootstraps python 3 on CoreOS/Flatcar Linux and loads the necessary Kernel modules and parameters to deploy vanilla Kubernetes

## Testing

This role supports [molecule](https://molecule.readthedocs.io/en/latest/) using the docker provider.

1. Install molecule `pip install molecule[docker]`
2. Run the scenario using `molecule converge`
