% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/clockwise.R
\name{st_force_polygon_cw}
\alias{st_force_polygon_cw}
\title{Force a POLYGON or MULTIPOLYGON to be clockwise}
\usage{
st_force_polygon_cw(x)
}
\arguments{
\item{x}{object with polygon geometries}
}
\value{
object of the same class as \code{x}
}
\description{
Check if a POLYGON or MULTIPOLYGON is clockwise, and if not make it so. 
According to the 'Right-hand-rule', outer rings should be clockwise, and 
inner holes should be counter-clockwise
}
\examples{
library(sf)
polys <- st_sf(cw = c(FALSE, TRUE), 
               st_as_sfc(c('POLYGON ((0 0, 1 0, 1 1, 0 0))', 
                           'POLYGON ((1 1, 2 2, 2 1, 1 1))')))

st_force_polygon_cw(polys)
st_force_polygon_cw(st_geometry(polys))
st_force_polygon_cw(st_geometry(polys)[[1]])
}
