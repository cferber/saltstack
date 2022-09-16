# Name: webconfig.sls
# Description: State file to deploy jinga

# Copy the html files to the minion
deploy_index_html:
  file.managed:
    - name: /var/www/custom/index.html
    - source: salt://nginx/webconfig/files/index.html.jinja
    - template: jinja
    - makedirs: True

# Copy config files to the minion
deploy_config:
  file.managed:
    - name: /etc/nginx/sites-enabled/custom
    - source: salt://nginx/webconfig/files/webconfig.jinja
    - template: jinja
    - makedirs: True
    
# Delete default sites-enabled
delete_default_config:
  file.absent:
    - name: /etc/nginx/sites-enabled/default
      
# Restart the nginx service
restart_nginx:
  service.running:
    - name: nginx
      watch:
      - file: deploy_config
