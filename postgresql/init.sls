postgresql:
  pkg:
    - installed
  service:
    - running
    - require:
      - pkg: postgresql

dbusername:
  postgres_user:
    - present
    - password: pass

dbname:
  postgres_database:
    - present
    - encoding: UTF-8
    - owner: dbusername
    - name: dbname
    - require:
      - postgres_user: dbusername
