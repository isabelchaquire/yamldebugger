% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/yaml.Qdfields.R
\name{yaml.Qdfields.from.meta}
\alias{yaml.Qdfields.from.meta}
\title{Extracts unique and disjoint YAML data field shortcuts as defined in \code{Q_dfield_list} for a given parsed YAML object.}
\usage{
yaml.Qdfields.from.meta(yaml_meta)
}
\arguments{
\item{yaml_meta}{parsed YAML object as a structured list}
}
\value{
A list containing \code{found_dnames}, disjoint YAML data field shortcuts found in \code{yaml_meta},
and \code{new_dnames}, a vector of all YAML data fields for the given \code{yaml_meta} which
are not captured by \code{Q_dfield_list} so far.
}
\description{
\code{Q_dfield_list} is the list defining the data field shortcuts and the corresponding full name variations.
Additionally, \code{yaml.Qdfields.from.meta} returns a vector of all YAML data fields for the given \code{yaml_meta} which
are not captured by \code{Q_dfield_list} so far.
}
\examples{
\dontrun{
d_results = yaml.debugger.run(qnames, d_init)
d_names  = unlist(sapply( d_results$Metainfos, function(yaml){ yaml.Qdfields.from.meta(yaml)$found_dnames } ))
( d_names_distr = sort(table(d_names), decreasing = T) )
}
}

