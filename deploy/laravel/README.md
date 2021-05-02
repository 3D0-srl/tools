# Deploy laravel

File di configurazione per il deploy su cpanel di un progetto Laravel

## Prerequisiti
Assicurarsi che siano soddisfatti i rquisiti di sistema presenti nella documentazione ufficiale di Laravel  
https://laravel.com/docs/8.x/deployment

## Utilizzo
Il file deve essere caricato nella root del progetto.  
Occorre inserire nel file **.gitignore** la seguente riga

```bash
.bashrc
```

**Costanti configurabili**:

- **PHP_PATH** - path dell'eseguibile php (la versione di PHP deve essere >= 7.3). Qualora la versione di PHP presente nel dominio è inferiore a 7.3 è possibile accedere alle versioni di PHP presenti in cpanel utilizzando il seguente path

```bash
/opt/cpanel/ea-php{PHP_VERSION}/root/usr/bin/php
```
ad esempio la versione PHP 7.4 è presente sotto

```bash
/opt/cpanel/ea-php74/root/usr/bin/php
```

- **DEPLOY_PATH** - path dove verrà caricato il progetto. 

- **PUBLIC_DIR** - nome della cartella sotto $DEPLOY_PATH dove verrà caricata la cartella pubblica di Laravel