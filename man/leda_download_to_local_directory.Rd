\name{leda_download_to_local_directory}
\alias{leda_download_to_local_directory}
\title{A utility to download a local copy of the LEDA data files.}
\usage{
leda_download_to_local_directory(directory)
}
\arguments{
  \item{directory}{is the directory where the downloaded
  data will be stored (in order to be used in future R
  sessions); default is NULL.}
}
\value{
The function save a local copy of LEDA data in a file
called \code{leda_database.Rda}
}
\description{
Allows the user to retrieve the data files from the LEDA
Traitbase website, merge them in a single \code{R} dataset
and store the result in a local file; this file could be
then used whenever the \code{tr8()} function is used in
order to speed up the process of retrieving traits data.
}
\details{
The function uses a GUI created via the \code{gWidgets}
package, to let the user select a folder where the datasets
has to be stored.
}
\author{
Gionata Bocci <boccigionata@gmail.com>
}
\references{
Kleyer, M., Bekker, R.M., Knevel, I.C., Bakker, J.P,
Thompson, K., Sonnenschein, M., Poschlod, P., Van
Groenendael, J.M., Klimes, L., Klimesova, J., Klotz, S.,
Rusch, G.M., Hermy, M., Adriaens, D., Boedeltje, G.,
Bossuyt, B., Dannemann, A., Endels, P., Götzenberger, L.,
Hodgson, J.G., Jackel, A-K., Kühn, I., Kunzmann, D.,
Ozinga, W.A., Römermann, C., Stadler, M., Schlegelmilch,
J., Steendam, H.J., Tackenberg, O., Wilmann, B., Corneliss
n, J.H.C., Eriksson, O., Garnier, E., Peco, B. (2008): The
LEDA Traitbase: A database of life-history traits of
Northwest European flora. Journal of Ecology 96:1266-1274.
\samp{
http://www.leda-traitbase.org/LEDAportal/data_files.jsp}
}
