nginx:
  pkg:
    - installed
  service.running:
    - watch:
      - pkg: nginx
{% if grains['os_family'] == 'Debian' %}
      - file: /etc/nginx/sites-available/default
{% elif grains['os_family'] == 'RedHat' %}
      - file: /etc/nginx/conf.d/default.conf
{% endif %}

nginx_conf:
  file.managed:
{% if grains['os_family'] == 'Debian' %}
    - name: /etc/nginx/sites-available/default
{% elif grains['os_family'] == 'RedHat' %}
    - name: /etc/nginx/conf.d/default.conf
{% endif %}
    - source: salt://nginx/default.conf
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: nginx


