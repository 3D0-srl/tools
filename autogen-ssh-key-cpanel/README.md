# autogen-ssh-key-cpanel

Script per la generazione automatica della chiave SSH da utilizzare in CPanel per il clone dei repository privati git.


## Utilizzo
```bash
./autogen-ssh-key-cpanel.sh NOME_CHIAVE COMMENTO
```

**Parametri:**

- **NOME_CHIAVE** - Nome della chiave.
- **COMMENTO** - Commento della chiave.

## Configurazione
È possibile configurare lo script modificando alcune costanti.

**Costanti configurabili**:

- **PATH_PUBKEY** - path storage chiave pubblica per consultazione.