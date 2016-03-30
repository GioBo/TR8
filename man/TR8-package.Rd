\docType{package}
\name{TR8-package}
\alias{TR8}
\alias{TR8-package}
\title{TR8: a tool for retrieving functional traits data for plant species.}
\description{
This package provide a set of functions for extracting
traits data for plant species from the following sources:

\itemize{

  \item{Biolflor \samp{http://www2.ufz.de/biolflor/index.jsp}}

 \item{ Ecological Flora of the British Isles \samp{http://www.ecoflora.co.uk/} }

  \item{ LEDA traitbase \samp{http://www.leda-traitbase.org/LEDAportal/}}

  \item{ Ellenberg values for Italian Flora}

  \item{ Mycorrhizal intensity database}

  \item{MycoFlor}
  
  \item{\samp{http://luirig.altervista.org/}}

  \item{\samp{http://perso.wanadoo.fr/philippe.julve/catminat.htm}}

  \item{BROT \samp{http://www.uv.es/jgpausas/brot.htm}}

  \item{PLANTS \samp{http://www.bricol.net/}}
}
  
}
\details{
\tabular{ll}{ Package: \tab TR8\cr Type: \tab Package\cr
Version: \tab 0.9.14\cr Date: \tab 2016-3-30\cr License: \tab
GPL>=2\cr Depends: \tab XML, RCurl, plyr, readxl\cr }

The easiest way of using the package is through the
\code{tr8()} function, which accepts a vector of plant
species names and returns a data frame containg traits data
which have been found in the various sources.
The TR8 name, inspired by "car plates" jokes, was chosen since
	     it both reminds of the main object of the package and is
	     extremely short to type.
}
\examples{
\dontrun{
## download some trait data for Abies alba 
My_traits<-tr8(species_list=c("Abies alba"),download_list=c("life_form_P"))
}
}

\references{
Please always use the following citations any time you use
trait data retrieved with \code{tr8}

\bold{BiolFlor}

Klotz, S., Kühn, I., Durka, W. (eds) (2002). BIOLFLOR - Eine Datenbank 
zu biologisch-ökologischen Merkmalen zur Flora von Deutschland. 
Schriftenreihe für Vegetationskunde *38*: 1-333.  (Bundesamt für. Bonn, 
Bundesamt für Naturschutz)

\bold{Ecoflora}

Fitter, A . H. and Peat , H. J. (1994). The Ecological Flora
Database, J. Ecol., 82, 415-425.
\samp{http://www.ecoflora.co.uk}

\bold{LEDA traitbase}

Kleyer, M., Bekker, R.M., Knevel,
I.C., Bakker, J.P, Thompson, K., Sonnenschein, M.,
Poschlod, P., Van Groenendael, J.M., Klimes, L., Klimesova,
J., Klotz, S., Rusch, G.M., Hermy, M., Adriaens, D.,
Boedeltje, G., Bossuyt, B., Dannemann, A., Endels, P.,
Götzenberger, L., Hodgson, J.G., Jackel, A-K., Kühn, I.,
Kunzmann, D., Ozinga, W.A., Römermann, C., Stadler, M.,
Schlegelmilch, J., Steendam, H.J., Tackenberg, O., Wilmann,
B., Cornelissen, J.H.C., Eriksson, O., Garnier, E., Peco,
B. (2008). The LEDA Traitbase: A database of life-history
traits of Northwest European flora. Journal of Ecology 96:
1266-1274.

\bold{Akhmetzhanova et al, 2012}

Akhmetzhanova, A.A, Soudzilovskaia, N.A., Onipchenko, V.G.,
Cornwell, W. K., Agafonov, V. A., Selivanov, I.A., and Cornelissen, 
J. H. C. (2012): A rediscovered treasure: mycorrhizal intensity database for
3000 vascular plants species across the former Soviet
Union. Ecology 93:689. \samp{http://esapubs.org/Archive/ecol/E093/059/default.htm}

\bold{Hempel et al, 2013}

Hempel, S., Götzenberger, L., Kühn. I., Michalski, S.G.,
Rillig, M.C., Zobel, M., and Moora, M., 2013. Mycorrhizas in the Central European flora:
relationships with plant life history traits and ecology. Ecology 94: 1389-1399.


\bold{Pignatti et al., 2005}

Pignatti, S., Menegoni, P., Pietrosanti, S. (2005).
Biondicazione attraverso le piante vascolari. Valori di
indicazione secondo Ellenberg (Zeigerwerte) per le specie
della Flora d'Italia. Braun-Blanquetia 39, Camerino, pp.
97.

\bold{Catminat}

Julve, P., 1998 ff. - Baseflor. Index botanique, écologique et
chorologique de la flore de France. Version : 26 November 2014.
http://perso.wanadoo.fr/philippe.julve/catminat.htm

\bold{BROT}


Paula S, Arianoutsou M, Kazanis D, Tavsanoglu Ç, Lloret F, Buhk C, Ojeda
F, Luna B, Moreno JM, Rodrigo A, Espelta JM, Palacio S, Fernández-Santos
B, Fernandes PM, and Pausas JG. 2009. Fire-related traits for plant
species of the Mediterranean Basin. Ecology 90: 1420.

AND

Paula S. & Pausas J.G. 2013. BROT: a plant trait database for
Mediterranean Basin species. Version 2013.06. URL:
http://www.uv.es/jgpausas/brot.htm 



\bold{PLANTS}

Green, W. (2009) USDA PLANTS Compilation, version 1, 09-02-02. 

} 
\seealso{
\code{bib()}
}

\author{
Gionata Bocci <boccigionata@gmail.com>
}
\keyword{functional}
\keyword{package}
\keyword{traits}

