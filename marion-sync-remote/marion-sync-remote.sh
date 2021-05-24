#!/bin/bash
#
# marion-sync-remote
#
# Usage: 
#   ./marion-sync-remote.sh [MODE]
#

# ====== CONFIGURAZIONI ======
# host e nome archivio
REMOTE_HOST="89.40.227.242"
REMOTE_USER="srmnew"
REMOTE_DIR="prova_upload_script"
ARCHIVE_NAME="marion-sync-archive"
LOG_NAME="marion-sync-remote"


# file da escludere
declare -a excludes_files=(
    "--exclude=./$ARCHIVE_NAME.tar.gz"
    "--exclude=./marion-sync-remote.sh"
    "--exclude=./cache"
    "--exclude=./.gitignore"
    "--exclude=./.git"
    "--exclude=./media"
    "--exclude=./upload"
    "--exclude=./*.log"
)

{   
    # funzione semplice per loggare messaggi su file
    log() {
        echo "$(date '+%d/%m/%Y %H:%M:%S') - $1"
    }


    # funzione per la creazione dell'archivio compresso
    create_compressed_archive() {
        log "Create compressed archive"

        if [[ -f "$ARCHIVE_NAME.tar.gz" ]]; then
            log "Archive file exists (local) - Removed file"
            rm $ARCHIVE_NAME.tar.gz
        fi

        touch $ARCHIVE_NAME.tar.gz
        
        log "Start compression (tar.gz)"
        
        tar -czvf $ARCHIVE_NAME.tar.gz ${excludes_files[@]} .
        
        log "End compression (tar.gz)"
    }


    # funzione per il trasferimento dell'archivio mediante scp
    transfer_archive_to_remote() {
        log "Start transfer archive to remote"
        log "file: $ARCHIVE_NAME.tar.gz"
        log "host: $REMOTE_USER@$REMOTE_HOST:$REMOTE_DIR"
        scp $ARCHIVE_NAME.tar.gz $REMOTE_USER@$REMOTE_HOST:$REMOTE_DIR
        log "End transfer archive to remote"
        sleep 5
    }


    # funzione per l'estrazione dell'archivio in remoto
    extract_archive_on_remote() {
        log "Start extract archive on remote"
        ssh $REMOTE_USER@$REMOTE_HOST "cd $REMOTE_DIR; tar -xvf $ARCHIVE_NAME.tar.gz"
        log "End extract archive on remote"
    }


    main() {
        MODE=$1
        
        echo "marion-sync-remote"
        echo "------------------"

        if [[ -z $MODE ]]; then
            create_compressed_archive
            transfer_archive_to_remote
            extract_archive_on_remote
        elif [[ $MODE == "archive" ]]; then
            log "archive mode"
            create_compressed_archive
        elif [[ $MODE == "sync" ]]; then
            log "sync mode"
            transfer_archive_to_remote
        elif [[ $MODE == "extract" ]]; then
            log "extract mode"
            extract_archive_on_remote
        else
            echo "Error: mode incorrect"
            exit 1
        fi
    }

    # Start
    main $1

}  2>&1 | tee $LOG_NAME.log