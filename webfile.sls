git:
  pkg:
    - installed

https://github.com/chojayr/flask_test.git:
  git.latest:
    - rev: master
    - target: /tmp/webflask
    - require:
      - pkg: git

run_flask:
  cmd.run:
    - name: python /tmp/webflask/flasktest.py &
    - watch:
      git: https://github.com/chojayr/flask_test.git

