# docker nfs on mac 
Docker è uno strumento molto valido per la virtualizzazione di un ambiente di sviluppo. 
Attraverso  **docker-compose**, infatti, siamo in grado di mettere su molteplici macchine virtuali (container) disposti in una rete viruale consentendoci, quindi, di creare localmente un ambiente di sviluppo per i nostri progetti.  

Su OSX però si verifica una lentezza nell'esecuzione dei progetti dovuta al fatto che Docker ha bisogno di un kernel Linux per funzionare. Sfortunatamente, Mac OS e Windows non possono fornire questo. Pertanto, esiste un client su Mac OS per eseguire Docker. Oltre a questo, esiste un livello di astrazione tra il kernel di Mac OS e le applicazioni (contenitori Docker) ed i filesystem non sono gli stessi. Per questo motivo, Docker funziona lentamente su Mac OS. 

Docker consente di effetuare il binding tra un volume della macchina host con un volume della macchina del container consentendoci di riflettere le modifiche fatte sull'host nel container e viceversa.  
La lentezza di docker sta proprio in questa mappatura dei volummi per cui per poter velocizzare l'esecuzione occorre intervenire su questo aspetto.

**Utilizzo di un volume NFS**  
Per migliorare le performance su Mac OS una delle soluzione è di effettuare il binding tra il volume del container con un volume **nfs**.  
Per effettuare questa operazione occorre  

- eseguire lo script **env_vars.sh** 
```bash
./env_vars.sh
```
- riportare il volume nel file **docker-compose.yml**  

**N.B.**
Per funzioare il progetto deve essere sotto la cartella **/Users** e non in sottodirectory di quest'ultima.  
Es. **/Users/mioprogetto**






