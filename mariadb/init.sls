mariadb_server_installed:
  pkg.installed:
    - pkgs:
      - mariadb-server
            
mariadb-server:
  service.running:
    - name: mariadb
    - enable: True
    - require:
      - pkg: mariadb_server_installed
