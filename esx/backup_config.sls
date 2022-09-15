esxi_backup_config:
  module.run:
    - name: vmare-esxi.esxi_backup_config
    - host_name: 172.16.10.11 
    - http_opts:
        verify_ssl: False
