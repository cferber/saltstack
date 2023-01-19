{% for filename,filedetails in pillar.get('filestocreate', {}).items() %}

{{filename}}:
  file.makedirs:
    - path: c:\tmp\{{filename}}\
    
{% endfor %}
