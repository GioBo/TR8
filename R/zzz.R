.onAttach<-function(...){
    packageStartupMessage(
        "

        Please remember to always cite the appropriate sources of traits data (see ?bib).
        \n
        Please note: in new releases of TR8 package, the tr8 function accepts the additional
        parameter 'allow_persistent': setting it to TRUE, the function will download some
        data in your filesystem to make future queries run faster. If set to FALSE, data will
        be stored in a temporary directory. If not set, you will be prompted with a request
        when running tr8.

       See also vignette('TR8').
        ")

    }
