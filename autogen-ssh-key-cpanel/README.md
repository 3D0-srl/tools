# autogen-ssh-key-cpanel

Script per la configurazione automatica delle chiavi SSH da utilizzare in CPanel per il clone dei repository privati git.

Lo script effettua le seguenti operazioni:

1. Genera una coppia di chiavi SSH (pubblica/privata).
2. Stampa a console la chiave pubblica (da utilizzare per accedere al repo privato git).
3. Configura gli host in .ssh/config.

## Utilizzo
```bash
./autogen-ssh-key-cpanel.sh NOME_CHIAVE COMMENTO
```

**Parametri:**

- **NOME_CHIAVE** - nome della chiave (utilizzato anche come none dell'host).
- **COMMENTO** - commento della chiave.
