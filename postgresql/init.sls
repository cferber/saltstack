postgresql:
  pkg:
    - installed
  service.running:
    - name: postgresql
    - enable: True
    - require:
      - pkg: postgresql-server
