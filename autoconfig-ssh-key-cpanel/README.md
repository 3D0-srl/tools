# autogen-ssh-key-cpanel

Script per la generazione automatica della chiave SSH da utilizzare in CPanel per il clone dei repository privati git.


## Utilizzo
```bash
./autogen-ssh-key-cpanel.sh NOME_CHIAVE COMMENTO
```


## Configurazione
È possibile configurare lo script modificando 

Constanti configurabili:

- **PATH_PUBKEY** - path storage chiave pubblica per consultazione.