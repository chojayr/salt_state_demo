python-pip:
  pkg.installed

flask:
  pip.installed:
    - name: flask
    - require: 
      - pkg: python-pip

uwsgi:
  pip.installed:
    - name: uwsgi
    - require:
      - pkg: python-pip

