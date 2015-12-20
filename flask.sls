python-pip:
  pkg.installed

flask:
  pip.installed:
    - name: flask
    - require: 
      - pkg: python-pip
