# autogen-ssh-key-cpanel

Configurazione per poter poter esporre il CMS marion (web/database) in remoto.


## Utilizzo
```bash
./ngrok start -config ngrok.yml -all
```

**Nota bene**: inserire il file .yml all'interno della directory in cui si lancia ngrok.

## Configurazione
Per funzionare occorre configurare il proprio authtoken prelevabile dal pannello di controllo del sito di ngrok.

**Costanti configurabili**:

- **authtoken** - token di autenticazione