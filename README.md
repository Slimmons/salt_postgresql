# salt_postgresql

    State: - postgres_user
    Name:      python
    Function:  present
        Result:    False
        Comment:   An exception occurred in this state: Traceback (most recent call last):
  File "/usr/lib/python2.7/dist-packages/salt/state.py", line 1318, in call
    ret = self.states[cdata['full']](*cdata['args'])
  File "/usr/lib/python2.7/dist-packages/salt/states/postgres_user.py", line 102, in present
    if __salt__['postgres.user_exists'](name, runas=user):
  File "/usr/lib/python2.7/dist-packages/salt/modules/postgres.py", line 490, in user_exists
    runas=runas)
  File "/usr/lib/python2.7/dist-packages/salt/modules/postgres.py", line 416, in user_list
    if ver >= distutils.version.LooseVersion('9.1'):
  File "/usr/lib/python2.7/distutils/version.py", line 296, in __cmp__
    return cmp(self.version, other.version)
AttributeError: 'NoneType' object has no attribute 'version'

        Changes:   
----------
    State: - postgres_db
    Name:      weblogs
    Function:  present
        Result:    False
        Comment:   State postgres_db.present found in sls postgresql is unavailable

        Changes:  
