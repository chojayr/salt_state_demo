git:
  pkg:
    - installed

webflask:
  user.present:
    - fullname: Web Flask
    - shell: /bin/bash
    - home: /home/webflask
    - uid: 4000
    - gid: 4000

https://github.com/chojayr/flask_test.git:
  git.latest:
    - rev: master
    - target: /home/webflask
    - require:
      - pkg: git

