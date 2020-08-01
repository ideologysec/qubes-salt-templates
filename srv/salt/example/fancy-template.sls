create-fancy-template:
  qvm.vm:
    - name: fancy-template
    - clone:
      - source: debian-10
      - label: blue
    - tags:
      - add:
        - playground

create-fancy-vm:
  qvm.vm:
    - name: fancy
    - present:
      - template: fancy-template
      - label: red
      - mem: 3000
    - prefs:
      - template: fancy-template