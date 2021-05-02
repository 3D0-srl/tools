# Deploy Angular

File di configurazione per il deploy su cpanel di un progetto Laravel

## Prerequisiti
Assicurarsi che su cpanel sia installato **Node js**.  
L'installazione di Node js può essere effettuata mediante il tool strumento Easy Apache di WHM  
https://docs.cpanel.net/knowledge-base/general-systems-administration/guide-to-node-js-installations/

## Utilizzo
Il file deve essere caricato nella root del progetto.  
Assicurasi che nella root del sito sia presente un file .htaccess conforme a quello riportato in questa directory.

**Costanti configurabili**:

- **NPM_PATH** - path dell'eseguibile npm

- **DEPLOY_PATH** - path dove verrà caricato il progetto. 

- **DIST_PATH** - nome della cartella del progetto in cui è collocata la distribuzione