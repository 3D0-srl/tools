# marion-sync-remote

Script shell per la sincronizzazione da locale a remoto di un progetto Marion.

Lo script effettua le seguenti operazioni:

1. Creazione di un archivio compresso (.tar.gz) con i file di progetto.
2. Trasferimento dell'archivio da locale a remoto mediante scp.
3. Connessione ssh al server per lanciare il comando di estrazione dell'archivio sul server remoto.

## Utilizzo
```bash
./marion-sync-remote.sh [MODE]
```

**Parametri:**

- **MODE** - (Opzionale) permette di lanciare singole operazioni:

    `archive`: crea l'archivio compresso. <br>
    `sync`: trasferisce l'archivio locale in remoto <br>
    `extract`: estrare l'archivio sulla posizione remota.

    Se non viene passato alcun parametro, lo script eseguirà automaticamente tutte le operazioni indicate.
    


## Configurazione
Lo script permette di essere configurato mediante i seguenti parametri presenti all'interno dello script.

### Parametri di configurazione

- **REMOTE_HOST** - indirizzo del server.
- **REMOTE_USER** - utente del server.
- **REMOTE_DIR** - directory remota.
- **ARCHIVE_NAME** - nome dell'archivio.
- **LOG_NAME** - nome dei log.
