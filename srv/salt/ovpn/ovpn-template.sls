create-ovpn-template:
  qvm.vm:
    - name: ovpn-min
    - clone:
      - source: debian-10-minimal
      - label: black
    - tags:
      - add:
        - net

create-pia-us-east:
  qvm.vm:
    - name: pia-us-east
    - present:
      - template: ovpn-min
      - label: green
      - mem: 1024
      - vcpu: 1
    - prefs:
      - template: ovpn-min