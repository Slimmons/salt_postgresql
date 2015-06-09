postgresql:
  pkg:
    - installed
  service:
    - running
    - require:
      - pkg: postgresql

python:
  postgres_user:
    - present
    - user: root
    - password: py
    - runas: postgres

weblogs:
  postgres_db:
    - present
    - runas: postgres
    - owner: python
