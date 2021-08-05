postgresql-server:
  pkg:
    - installed
    
postgredb init:
  cmd.run:
    - name: postgresql-setup initdb

postgresql:
  service.running:
    - name: postgresql
    - enable: True
    - require:
      - pkg: postgresql-server
