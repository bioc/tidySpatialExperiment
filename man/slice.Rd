% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dplyr_methods.R
\name{slice}
\alias{slice}
\alias{slice_head}
\alias{slice_tail}
\alias{slice_sample}
\alias{slice_min}
\alias{slice_max}
\title{Subset rows using their positions}
\value{
An object of the same type as \code{.data}. The output has the following
properties:
\itemize{
\item Each row may appear 0, 1, or many times in the output.
\item Columns are not modified.
\item Groups are not modified.
\item Data frame attributes are preserved.
}
}
\description{
\code{slice()} lets you index rows by their (integer) locations. It allows you
to select, remove, and duplicate rows. It is accompanied by a number of
helpers for common use cases:
\itemize{
\item \code{slice_head()} and \code{slice_tail()} select the first or last rows.
\item \code{slice_sample()} randomly selects rows.
\item \code{slice_min()} and \code{slice_max()} select rows with the smallest or largest
values of a variable.
}

If \code{.data} is a \link[dplyr]{grouped_df}, the operation will be performed on each group,
so that (e.g.) \code{slice_head(df, n = 5)} will select the first five rows in
each group.
}
\details{
Slice does not work with relational databases because they have no
intrinsic notion of row order. If you want to perform the equivalent
operation, use \code{\link[dplyr:filter]{filter()}} and \code{\link[dplyr:row_number]{row_number()}}.
}
\section{Methods}{


These function are \strong{generic}s, which means that packages can provide
implementations (methods) for other classes. See the documentation of
individual methods for extra arguments and differences in behaviour.

Methods available in currently loaded packages:
\itemize{
\item \code{slice()}: \Sexpr[stage=render,results=rd]{dplyr:::methods_rd("slice")}.
\item \code{slice_head()}: \Sexpr[stage=render,results=rd]{dplyr:::methods_rd("slice_head")}.
\item \code{slice_tail()}: \Sexpr[stage=render,results=rd]{dplyr:::methods_rd("slice_tail")}.
\item \code{slice_min()}: \Sexpr[stage=render,results=rd]{dplyr:::methods_rd("slice_min")}.
\item \code{slice_max()}: \Sexpr[stage=render,results=rd]{dplyr:::methods_rd("slice_max")}.
\item \code{slice_sample()}: \Sexpr[stage=render,results=rd]{dplyr:::methods_rd("slice_sample")}.
}

}

\examples{
example(read10xVisium)
spe |>
   slice(1)
}
\seealso{
Other single table verbs: 
\code{\link{arrange}()},
\code{\link{mutate}()},
\code{\link{rename}()},
\code{\link{summarise}()}
}
\concept{single table verbs}
