\name{tr8}
\alias{tr8}
\title{\code{tr8}: a function for retrieving functional traits data from various
databases.}
\usage{
tr8(species_list, download_list = NULL, gui_config = FALSE,synonyms=FALSE,
        catminat_alternatives=FALSE)
}
\arguments{
  \item{species_list}{a vector containing names of the
  plant species for which traits data want to be
  extracted.}

\item{download_list}{a vector containing the \code{short codes} of
  traits which should be downlaoaded (to be used as an alternative
to the GUI inerface)}
  \item{gui_config}{if set to TRUE a GUI for selecting
    traits of interest is shown (default is FALSE)}
  \item{synonyms}{if set to TRUE tr8 will use \code{taxize} to find
  synonyms for the species names provided with the \code{species_list} parameter and
  will return trait values for all those species; in that case the
  dataframe contained in the \code{@results} slot will have two
  additional columns called \emph{synonyms} (which contains the synonyms
  found using \code{tnrs}) and another one
  called \emph{original_names} which includes the
  original names provided with \code{species_list} (default is FALSE)}
\item{catminat_alternatives}{if set to TRUE tr8 will search, within the
  Catminat traitbase, for entries which contain, in their names, the
  ones in the provided \code{species_list}; e.g. if "Myrtus communis" is
  included in the \code{species_list}, tr8 will query the following
  existing entries in Catminat: "Myrtus communis", "Myrtus communis v. communis" and "Myrtus communis v. leucocarpa".
  (default is FALSE)}
}
\value{
An object of class \code{Tr8}; the slots \code{@results} contains various traits data for the species
of interest.
}
\description{
\code{tr8} makes internally use of other functions provided by the
\code{TR8} package in order to query various databases and
provide the user with a dataframe containing traits data
for the species of interest.
At the moment the following databeses are available:


\itemize{

  \item{Biolflor \samp{http://www2.ufz.de/biolflor/index.jsp}}

 \item{ Ecological Flora of the British Isles \samp{http://www.ecoflora.co.uk/} }

  \item{ LEDA traitbase \samp{http://www.leda-traitbase.org/LEDAportal/}}

  \item{ Ellenberg values for Italian Flora}

  \item{ Mycorrhizal intensity database \samp{http://esapubs.org/Archive/ecol/E093/059/default.htm}}

  \item{ MycoFlor \samp{http://www.esajournals.org/doi/abs/10.1890/12-1700.1}}

  \item{ Catminat \samp{http://philippe.julve.pagesperso-orange.fr/catminat.htm}}

  \item{ BROT \samp{http://www.uv.es/jgpausas/brot.htm} }

  \item{PLANTS \samp{http://www.bricol.net/}}

  \item{Imkerbond Zoersel \samp{http://users.telenet.be/imkerbondzoersel/}}
}


  The function can either be used in an interactive way (i.e. if the
  \code{gui_config}  parameter is set to \code{TRUE}, a
  multi-panel GUI will ask users to choose among lists of available
  traits) or in a non-interactive way (providing the function with a
  vector containing the \code{short codes} of the trait which should be
  downloaded - in order to have an idea of the available traits and the
  associated codes to be used for the \code{download_list}, see the
  \code{available_traits} function).
  


}

\details{

  Not all traitbases use the most updated accepted names, thus
  different traibases may use different names for the same biological entity; it is
  not easy to find an automatic way to solve this issue, thus users are
  urged to always check the results provided by the \code{tr8} function.
   In order to help users, the new version of the function accepts two
  parameters, \code{synonyms} and \code{catminat_alternative} so that
  data will be retrieved also for species which are not directly
  requested, but may be of interest for
  the user (e.g. in Catminat currently there are not traits for
  "Myrtus communis" but there are some for its subspecies). In this case
  some careful manual work will be required later in order to select species and
  traits of interest.
}

\examples{
\dontrun{
## download some trait data for Abies alba 
My_traits<-tr8(species_list=c("Abies alba"),download_list=c("life_form_P"))
}
}
\author{
Gionata Bocci <boccigionata@gmail.com>
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

\bold{LEDA traitbase} Kleyer, M., Bekker, R.M., Knevel,
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

\bold{Pignatti et al., 2005}

Pignatti, S., Menegoni, P., Pietrosanti, S. (2005).
Biondicazione attraverso le piante vascolari. Valori di
indicazione secondo Ellenberg (Zeigerwerte) per le specie
della Flora d'Italia. Braun-Blanquetia 39, Camerino, pp.
97.

\bold{MycoFlor}

Mycorrhizas in the Central European flora: relationships with plant life history traits and ecology
Stefan Hempel, Lars Götzenberger, Ingolf Kühn, Stefan G. Michalski, Matthias C. Rillig, Martin Zobel, and Mari Moora
Ecology 2013 94:6, 1389-1399

\bold{Catminat}

Julve, P., 1998 ff. - Baseflor. Index botanique, écologique et
chorologique de la flore de France. Version : 26 November 2014.
http://perso.wanadoo.fr/philippe.julve/catminat.htm

\bold{BROT}

Paula S, Arianoutsou M, Kazanis D, Tavsanoglu Ç, Lloret F, Buhk C, Ojeda
F, Luna B, Moreno JM, Rodrigo A, Espelta JM, Palacio S, Fernández-Santos
B, Fernandes PM, and Pausas JG. 2009.
Fire-related traits for plant species of the Mediterranean Basin. Ecology 90: 1420. 

AND

Paula S. & Pausas J.G. 2013. BROT: a plant trait database for
Mediterranean Basin species.
Version 2013.06. URL: http://www.uv.es/jgpausas/brot.htm

\bold{PLANTS}

Green, W. (2009) USDA PLANTS Compilation, version 1, 09-02-02. 

Pignatti S., Menegoni P., Pietrosanti S., 2005, Biondicazione attraverso le piante vascolari.
Valori di indicazione secondo Ellenberg (Zeigerwerte) per le specie della Flora d'Italia.
Braun-Blanquetia 39, Camerino, pp.  97.
}

\seealso{
\code{bib()}
}


