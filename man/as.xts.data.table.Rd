\name{as.xts.data.table}
\alias{as.xts.data.table}
\title{Efficient data.table to xts conversion}
\description{
  Efficient conversion of data.table to xts, data.table must have \emph{POSIXct} or \emph{Date} type in first column.
}
\usage{
as.xts.data.table(x)
}
\arguments{
\item{x}{data.table to convert to xts, must have \emph{POSIXct} or \emph{Date} in the first column. All others non-numeric columns will be omitted with warning.}
}
\seealso{ \code{\link{as.data.table.xts}} }
\examples{
\dontrun{
sample.dt <- data.table(date = as.Date((Sys.Date()-999):Sys.Date(),origin="1970-01-01"),
                        quantity = sample(10:50,1000,TRUE),
                        value = sample(100:1000,1000,TRUE))
# print dt
print(sample.dt)
# print head of xts
print(head(as.xts.data.table(sample.dt))) # xts might not be attached on search path
}
}
