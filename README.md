# symplegma-os_bootstrap

This ansible role bootstraps python 3 on CoreOS/Flatcar Linux and load the necessaries Kernel modules and parameters necessary for vanilla Kubernetes


## Vars

| Vars                      | Description | Default                                                                                                                                |
|---------------------------|-------------|----------------------------------------------------------------------------------------------------------------------------------------|
| module_load_path          |             | /etc/modules-load.d/99-kubernetes.conf                                                                                                 |
| kernel_modules            |             | - br_netfilter<br>- ip_vs<br>- ip_vs_rr<br>- ip_vs_wrr<br>- ip_vs_sh<br>- nf_conntrack_ipv4                                                           |
| kernel_parameters         |             | - net.bridge.bridge-nf-call-iptables<br>- net.bridge.bridge-nf-call-arptables<br>- net.bridge.bridge-nf-call-ip6tables<br>- net.ipv4.ip_forward |
| bin_dir                   |             | /opt/bin                                                                                                                               |
| sysctl_file_path          |             | /etc/sysctl.d/99-kubernetes.conf                                                                                                       |
| pip_python_coreos_modules |             | - httplib2<br>- six                                                                                                                       |
