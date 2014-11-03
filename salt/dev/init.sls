git:
  pkg:
    - installed

vim:
  pkg:
    - installed

vimrc:
  file:
    - managed
    - source: salt://dev/.vimrc
    - name: /root/.vimrc

nano:
  pkg:
    - removed

python2:
  pkg:
    - installed

python-pkgs:
  pkg:
    - installed
    - names:
      - python2-pip
      - ipython2
