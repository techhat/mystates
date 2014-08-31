mariadb:
  pkg.installed
  file.managed:
    name: /etc/mysql/my.cnf
    source: salt://mariadb/my.cnf
  service.running:
    enabled: True
    require:
      pkg: httpd
      file: httpd
