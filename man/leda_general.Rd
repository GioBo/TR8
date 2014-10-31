\name{leda_general}
\alias{leda_general}

\title{
Function which takes care of downloading the  \code{.txt} files composing the
LEDA Traitbase
}
\description{
 Takes care of dowloading the required \code{.txt} files
 and extract the trait (column of the table) of interest and return a
 dataframe with requested species' names as rows and LEDA traits as columns.
}
\usage{
##leda_general(url, skip_row, species, column, out_name)
}

\arguments{
  \item{url}{the url of the \code{txt} file}
  \item{skip_row}{the number of the first rows of the file which should be left out
  (they contain information such as the SQL query needed to generate the
  file, but are of no use for the \code{TR8} package)}
  \item{species}{ Vector of plant species names}
\item{column}{The name of the column containing the trait of interest in \code{txt} file}
\item{out_name}{A short name to be used as the trait name in the returned dataframe}
}
\value{
  The function returns a dataframe containing the column of interest
  from the original .txt file.
}
\references{
Please cite the following reference any time you use data
retrieved from the LEDA traitbase (citation reported at
\url{http://www.leda-traitbase.org/LEDAportal/citation.jsp}):

Kleyer, M., Bekker, R.M., Knevel, I.C., Bakker, J.P,
Thompson, K., Sonnenschein, M., Poschlod, P., Van
Groenendael, J.M., Klimes, L., Klimesova, J., Klotz, S.,
Rusch, G.M., Hermy, M., Adriaens, D., Boedeltje, G.,
Bossuyt, B., Dannemann, A., Endels, P., Götzenberger, L.,
Hodgson, J.G., Jackel, A-K., Kühn, I., Kunzmann, D.,
Ozinga, W.A., Römermann, C., Stadler, M., Schlegelmilch,
J., Steendam, H.J., Tackenberg, O., Wilmann, B.,
Cornelissen, J.H.C., Eriksson, O., Garnier, E., Peco, B.
(2008): The LEDA Traitbase: A database of life-history
traits of Northwest European flora. Journal of Ecology 96:
1266-1274.

}
\author{
Gionata Bocci \email{boccigionata@gmail.com>}
}
\seealso{
  tr8()
}
\examples{
\dontrun{
age_of_first_flowering<-leda_general(url="age%20of%20first%20flowering.txt",
   skip_row =4, column="age of first flowering", out_name="age_first_flowering",
   species=species)
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ tr8 }
\keyword{ leda_lookup}% __ONLY ONE__ keyword per line

