postgresql-server:
  pkg:
    - installed
postgresql:
  service.running:
    - name: postgresql
    - enable: True
    - require:
      - pkg: postgresql-server
