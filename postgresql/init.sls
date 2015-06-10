postgresql:
  pkg:
    - installed
  service:
    - running
    - require:
      - pkg: postgresql

db_username:
  postgres_user:
    - present
    - password: pass

db_name:
  postgres_db:
    - present
    - encoding: UTF-8
    - owner: db_username
    - name: db_name
