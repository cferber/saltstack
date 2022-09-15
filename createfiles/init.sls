{% for filename,filedetails in pillar.get('filestocreate', {}).items() %}

{{filename}}:
  file.touch:
    - name: /tmp/{{filename}}
    
{% endfor %}
