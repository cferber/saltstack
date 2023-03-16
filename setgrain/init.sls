{% set addomain = salt.pillar.get('addomain','') %}
{% set addomainvalue = salt.pillar.get('addomainvalue','') %}
{% set adnetbiosdomain = salt.pillar.get('adnetbiosdomain','') %}
{% set adnetbiosdomainvalue = salt.pillar.get('adnetbiosdomainvalue','') %}
{% set adsafepassword = salt.pillar.get('adsafepassword','') %}
{% set adsafepasswordvalue = salt.pillar.get('adsafepasswordvalue','') %}

{% set custom_grains =({addomain:addomainvalue,adnetbiosdomain:adnetbiosdomainvalue,adsafepassword:adsafepasswordvalue}) %}

{% for key, value in custom_grains.items() %}
{% if key|length %}
append_grains_{{key}}:
   grains.present:
     - name: {{key}}
     - value: {{value}}
     
{% endif %}
{% endfor %}
