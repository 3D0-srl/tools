# ftp-sftp-in-vscode

È possibile connettersi a dei server remoti (ftp/sftp) mediante l'estensione di VSCode: [SFTP - liximomo ](https://marketplace.visualstudio.com/items?itemName=liximomo.sftp).

Questa estensione permette di visualizzare/prelevare i file presenti sul server remoto, effettuare la modifica in locale per poi effettuare nuovamente l'upload. (Mediante il menù contestuale > Upload).


## Configurazione

Installare l'estensione mediante VSCode.

Dopodiché aprire la **Command Palette** di **VSCode** mediante `CTRL+Shift+P` (per Linux/Windows) oppure
`Command+Shift+P`(per macOS) e cercare:  `SFTP: Config`.

Si aprirà un file di configurazione `.json` con dei parametri da configurare.

Json di esempio:
```json
{
    "name": "Server name",
    "host": "localhost",
    "protocol": "sftp",
    "port": 22,
    "username": "username",
    "password": "password",
    "remotePath": "/public_html",
    "uploadOnSave": false
}
```

Una volta terminata la configurazione, salvare il file. Esso verra salvato all'interno di una cartella nascosta `.vscode` nel path in cui si è attualmente posizionati mediante VSCode.

**Nota bene**: ricordare di aggiungere la cartella/file(`sftp.json`) al `.gitignore` per evitare di esporre i puntamenti del server sul repository.


### Parametri di configurazione

- **name** - nome del server.
- **host** - commento della chiave.
- **protocol** - protocollo di connessione (`ftp` | `sftp`).
- **port** - porta del server (`21` per ftp | `22` per sftp).
- **username** - username per la connessione.
- **password** - password per la connessione.
- **remotePath** - path remoto da aprire.
- **uploadOnSave** - se impostato a true, una volta salvato il file, fa upload automatico.


Per ulteriori informazioni sulla configurazione è possibile consultare la [wiki del progetto](https://github.com/liximomo/vscode-sftp/wiki) oppure [la pagina dell'estensione](https://marketplace.visualstudio.com/items?itemName=liximomo.sftp).