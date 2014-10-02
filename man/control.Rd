\name{control}
\alias{control}
\title{control}
\usage{
control(name_variable, dframe, DB)
}
\arguments{
  \item{name_variable}{name of the variable set up by
  tr8_config()}

  \item{dframe}{a dataframe containing traits definition
  (created by the tr8() function).}

  \item{DB}{name of the database to be used (eg.
  "Ecoflora")}
}
\value{
a vector of seleceted traits (if the variable was set
through the \code{tr8_config()} function OR \code{NULL} if
\code{tr8_config()} was run, but no traits were chosen for
that database OR an empty vector if \code{tr8_config()} was
not run.
}
\description{
A function to check if the user wants to download
some traits from a certain database.
}
\details{
This function check whether the user has run the
\code{tr8_config()} function and, in case he did, which
traits were selected (i.e. need to be downloaded by the tr8
function) for each database. These variables have the form
"res_NAMEDB" (eg. \code{res_Biolflor}) and they contain the
"output" of a "gWidget::notebook" window. The values of
these variables can be accessed through the \code{svalue}
}
\author{
Gionata Bocci <boccigionata@gmail.com>
}
\seealso{
tr8()
}

