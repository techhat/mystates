network_tools:
  pkg.installed
    pkgs:
      - ethtool
      - inetutils
      - net-tools
      - netcfg
      - openbsd-netcat
      - nmap
      - openssh
      - tcpdump
      - wget

openssh:
  pkg:
    - installed
  service:
    - running
    - enable: True

sshd_config:
  file:
    - managed
    - name: /etc/ssh/sshd_config
    - source: salt://network/sshd_config
    - require:
      - pkg: openssh
    - watch_in:
      - service: openssh

ssh_config:
  file:
    - managed
    - name: /etc/ssh/ssh_config
    - source: salt://network/ssh_config
    - require:
      - pkg: openssh
