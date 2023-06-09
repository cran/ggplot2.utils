% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/geom_km_ticks.R
\name{geom_km_ticks}
\alias{geom_km_ticks}
\title{Add Tick Marks to a Kaplan-Meier Survival Curve}
\usage{
geom_km_ticks(
  mapping = NULL,
  data = NULL,
  stat = "km_ticks",
  position = "identity",
  show.legend = NA,
  inherit.aes = TRUE,
  na.rm = TRUE,
  ...
)
}
\arguments{
\item{mapping}{Set of aesthetic mappings created by \code{\link[ggplot2:aes]{aes()}}. If specified and
\code{inherit.aes = TRUE} (the default), it is combined with the default mapping
at the top level of the plot. You must supply \code{mapping} if there is no plot
mapping.}

\item{data}{The data to be displayed in this layer. There are three
options:

If \code{NULL}, the default, the data is inherited from the plot
data as specified in the call to \code{\link[ggplot2:ggplot]{ggplot()}}.

A \code{data.frame}, or other object, will override the plot
data. All objects will be fortified to produce a data frame. See
\code{\link[ggplot2:fortify]{fortify()}} for which variables will be created.

A \code{function} will be called with a single argument,
the plot data. The return value must be a \code{data.frame}, and
will be used as the layer data. A \code{function} can be created
from a \code{formula} (e.g. \code{~ head(.x, 10)}).}

\item{stat}{The statistical transformation to use on the data for this
layer, either as a \code{ggproto} \code{Geom} subclass or as a string naming the
stat stripped of the \code{stat_} prefix (e.g. \code{"count"} rather than
\code{"stat_count"})}

\item{position}{Position adjustment, either as a string naming the adjustment
(e.g. \code{"jitter"} to use \code{position_jitter}), or the result of a call to a
position adjustment function. Use the latter if you need to change the
settings of the adjustment.}

\item{show.legend}{logical. Should this layer be included in the legends?
\code{NA}, the default, includes if any aesthetics are mapped.
\code{FALSE} never includes, and \code{TRUE} always includes.
It can also be a named logical vector to finely select the aesthetics to
display.}

\item{inherit.aes}{If \code{FALSE}, overrides the default aesthetics,
rather than combining with them. This is most useful for helper functions
that define both data and aesthetics and shouldn't inherit behaviour from
the default plot specification, e.g. \code{\link[ggplot2:borders]{borders()}}.}

\item{na.rm}{If \code{FALSE}, the default, missing values are removed with
a warning. If \code{TRUE}, missing values are silently removed.}

\item{...}{Other arguments passed on to \code{\link[ggplot2:layer]{layer()}}. These are
often aesthetics, used to set an aesthetic to a fixed value, like
\code{colour = "red"} or \code{size = 3}. They may also be parameters
to the paired geom/stat.}
}
\description{
\ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#experimental}{\figure{lifecycle-experimental.svg}{options: alt='[Experimental]'}}}{\strong{[Experimental]}}
Adds tickmarks at the times when there are censored observations but no
events.
}
\section{Aesthetics}{

\code{geom_km_ticks()} understands the following aesthetics (required aesthetics in bold):
\itemize{
\item \strong{\code{x}}: the survival/censoring times, automatically mapped by \code{\link[=stat_km_ticks]{stat_km_ticks()}}.
\item \strong{\code{y}}: the survival probability estimates, automatically mapped by \code{\link[=stat_km_ticks]{stat_km_ticks()}}.
\item \code{alpha}
\item \code{color}
\item \code{shape}
\item \code{size}
\item \code{stroke}
\item \code{fill}
}
}

\examples{
library(ggplot2)
sex <- rbinom(250, 1, .5)
df <- data.frame(
  time = exp(rnorm(250, mean = sex)),
  status = rbinom(250, 1, .75),
  sex = sex
)
ggplot(df, aes(time = time, status = status, color = factor(sex), group = factor(sex))) +
  geom_km() +
  geom_km_ticks(col = "black")
}
\seealso{
The default \code{stat} for this \code{geom} is \code{\link[=stat_km_ticks]{stat_km_ticks()}}.
}
\author{
Michael Sachs (in \code{ggkm}), Samer Mouksassi (in \code{ggquickeda}).
}
