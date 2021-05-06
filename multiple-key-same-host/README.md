# Configurazione multi repository github con Cpanel
Creare nella root del dominio cpanel il file config sotto la cartella ./ssh  
```bash
# ~/.ssh/config
Host host1 
Hostname github.com
User git
IdentityFile ~/.ssh/key1
StrictHostKeyChecking no


Host host2
Hostname github.com
User git
IdentityFile ~/.ssh/ke2
StrictHostKeyChecking no
```
Cambiare i permessi sul file  
```bash
chmod 600 ~/.ssh/config
```
