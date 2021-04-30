# autogen-ssh-key-cpanel

Script per la generazione automatica della chiave SSH da utilizzare in CPanel per il clone dei repository privati git.


## Utilizzo
```bash
./autogen-ssh-key-cpanel.sh NOME_CHIAVE COMMENTO
```

**Parametri:**

- **NOME_CHIAVE** - nome della chiave.
- **COMMENTO** - commento della chiave.

## Configurazione
È possibile configurare il comportamento dello script modificando alcune costanti presenti all'interno dello script.

**Costanti configurabili**:

- **PATH_PUBKEY** - path storage chiave pubblica per consultazione.