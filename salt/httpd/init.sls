httpd:
  pkg.installed
  file.managed:
    name: /etc/httpd/conf/httpd.conf
    source: salt://httpd/httpd.conf
  service.running:
    enabled: True
    require:
      pkg: httpd
      file: httpd
