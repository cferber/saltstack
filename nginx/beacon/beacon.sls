# Name: beacon.sls
# Description: Install Beacon on Minion to monitor index.html

needed-pkgs:
  pkg.installed:
    - pkgs:
      - python3-pyinotify
      
install_beacon:
  file.managed:
    - name: /etc/salt/minion.d/beacon.conf
    - source: salt:///nginx/beacon/files/beacon.conf
    - makedirs: True

restart_minion_service:
  service.running:
    - name: salt-minion
    - watch:
      - install_beacon
