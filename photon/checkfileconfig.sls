check_maxlogins:
    module.run:
       - name: file.contains
       - path: /etc/security/limits.conf
       - text: "hard    maxlogins      10"
