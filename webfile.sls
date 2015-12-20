git:
  pkg:
    - installed

https://github.com/chojayr/flask_test.git:
  git.latest:
    - rev: master
    - target: /tmp/webflask
    - require:
      - pkg: git

python /tmp/webflask/flasktest.py &:
  cmd.run:
    - watch:
      git: https://github.com/chojayr/flask_test.git

