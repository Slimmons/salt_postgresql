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
    - user: postgres
    - password: py

weblogs:
  postgres_db:
    - present
    - runas: postgres
    - owner: python
