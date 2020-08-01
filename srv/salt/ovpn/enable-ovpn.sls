install-packages:
  pkg.installed:
    - pkgs:
      - openvpn-client
      - 
  - refresh: True

configure-apt-test-apt-repo:
  pkgrepo.managed:
    - name: "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
    - file: /etc/apt/sources.list.d/vscode.list
    - key_url: "salt://microsoft.asc"
    - clean_file: True # squash file to ensure there are no duplicates
    - require:
      - pkg: install-python-apt-for-repo-config

install-vscode:
  pkg.installed:
    - pkgs:
      - code