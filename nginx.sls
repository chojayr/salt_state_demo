nginx:
  pkg:
    - installed
  service.running:
    - watch:
      - pkg: nginx
      - file: /etc/nginx/conf.d/default.conf

/etc/nginx/conf.d/default.conf:
  file.managed:
    - source: salt://nginx/default.conf
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: nginx


