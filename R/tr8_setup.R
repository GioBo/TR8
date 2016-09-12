tr8_setup <- function(){

    ## download a fresh version of Bioflor URLs

    directory<-user_data_dir()
    store_biolflor(directory)

    ## here we re-download LEDA lookup table
    ecoflora_download_to_local_directory(directory)

    }
