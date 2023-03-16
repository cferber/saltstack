# Install Active Directory

push_answerfile_ad:
  file.managed:
    - name: 'c:\temp\ad-answers.txt'
    - source: salt://windows/activedirectory/ad-answers.txt.jinja
    - template: jinja
    - skip_verify: True
    - makedirs: True 
      
install_ad:
  cmd.run:
    - name: 'dcpromo /unattend:c:\temp\ad-answers.txt'
    - success_retcodes:
       - 0
       - 2
       - 4
    - require:
      - push_answerfile_ad
