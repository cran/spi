\name{spi}
\Rdversion{1.1}
\alias{spi}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Standardized Precipitation Index (SPI)
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
The SPI function computes the SPI index (McKee et al., 1993) from a predefined time
scale (1 month, 3 months, 24 months, etc.) to a period choosen by users.
}

\usage{
spi(nargs, filename, id, fd, title, output, txlab, tylab)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{nargs}{
%%     ~~Describe \code{nargs} here~~
  number of arguments (minimum = 3)
}
  \item{filename}{
%%     ~~Describe \code{filename} here~~
  name of datafile

  The datafile in ASCII format must have the following layout:
  
  Months     2005     2006     2007     2008     2009    2010
  Jan        28.1     5.8      22.9     64.2     70.1    85.9
  Feb        41.4     85.1     149.2    31.0     142.1   36.9
  Mar        153.2    145.9    101.6    308.8    171.8   57.5 
  Apr        57.0     212.4    170.3    244.5    278.9   132.9
  May        154.9    119.9    57.8     128.8    212.7   55.6
  jun        158.6    81.3     160.8    94.0     115.3   63.3
  Jul        22.6     27.2     29.4     80.9     82.7    30.9 
}
  \item{id}{
%%     ~~Describe \code{id} here~~
  initial data
}
  \item{fd}{
%%     ~~Describe \code{fd} here~~
  final data
}
  \item{title}{
%%     ~~Describe \code{title} here~~
  data title
}
  \item{output}{
%%     ~~Describe \code{output} here~~
  output type ( 1 - graph, 2 - results matrix )
}
  \item{txlab}{
%%     ~~Describe \code{txlab} here~~
  the X axis title
}
  \item{tylab}{
%%     ~~Describe \code{tylab} here~~
  the Y axis title
}
}


\details{
%%  ~~ If necessary, more details than the description above ~~
Positive SPI values indicate greater than median
precipitation and negative values indicate less than median
precipitation. Drought periods are represented by relatively
high negative deviations. Normally, the 'drought' part of
the SPI range is arbitrary split into moderately dry
(-1.0 > SPI > -1.49), severely dry (-1.5 > SPI > -1.99)
and extremely dry conditions (SPI < -2.0). A drought event
starts when SPI value reaches -1.0 and ends when SPI becomes
positive again (McKee et al., 1993).

This function use the SPI range defined by National Climatic Data
Center (NCDC):

\tabular{ll}{
exceptionally moist: \tab SPI >= 2.0\cr
extremely moist: \tab 1.60 <= SPI < 1.99\cr
very moist: \tab 1.30 <= SPI < 1.59\cr
moderately moist: \tab 0.80 <= SPI < 1.29\cr
abnormally moist: \tab 0.51 <= SPI < 0.79\cr
near normal: \tab -0.50 <= SPI <= 0.50\cr
abnormally dry: \tab -0.79 <= SPI < -0.51\cr
moderately dry: \tab -1.29 <= SPI < -0.80\cr
severely dry: \tab -1.59 <= SPI < -1.30\cr
extremely dry: \tab -1.99 <= SPI < -1.60\cr
exceptionally dry: \tab SPI <= -2.0\cr
}


}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
Returns a data matrix or a graphic with SPI values.
}
\references{
%% ~put references to the literature/web site here ~
McKee, T.B., Doesken, N.J., Kleist, J., 1993. The relationship of drought frequency
and duration to time scales. In: Preprints, Eighth Conference on
Applied Climatology, January 17 e 22, Anaheim, California, pp. 179 e 184.
}
\author{
%%  ~~who you are~~
Josemir A Neves (josemir.neves@gmail.com/josemiremparn@rn.gov.br)
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##load data

data(spi_data) 

##write to file

write.table(spi_data,file="spi.txt",quote=FALSE,row.names=TRUE)	  

## Standard format with the output in the text format

spi(3,"spi.txt",1963,2010)

## A full output in graphical format

spi(7,"spi.txt",1963,2010,"Standardized Precipitation Index - Rio Grande do Norte State",1,"years","months")

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ distribution }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
