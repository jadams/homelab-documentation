```
touch /var/adm/authlog
chmod 600 /var/adm/authlog
chgrp sys /var/adm/authlog
```

/etc/syslog.conf
`auth.info                                       /var/adm/authlog`

/etc/default/login
```
SYSLOG=YES
SYSLOG_FAILED_LOGINS=0
```

/etc/ssh/sshd_config
```
SyslogFacility AUTH
LogLevel INFO
```

/kernel/drv/log.conf
`msgid=0;`
