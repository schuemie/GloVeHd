% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DataExtraction.R
\name{extractData}
\alias{extractData}
\title{Extract data from the database}
\usage{
extractData(
  connectionDetails,
  cdmDatabaseSchema,
  workDatabaseSchema,
  sampleTable = "glovehd_sample",
  sampleSize = 1e+06,
  chunkSize = 25000
)
}
\arguments{
\item{connectionDetails}{An R object of type \code{connectionDetails} created using the
\code{\link[DatabaseConnector:createConnectionDetails]{DatabaseConnector::createConnectionDetails()}} function.}

\item{cdmDatabaseSchema}{The name of the database schema that contains the OMOP CDM
instance. Requires read permissions to this database. On SQL
Server, this should specify both the database and the schema,
so for example 'cdm_instance.dbo'.}

\item{workDatabaseSchema}{The name of the database schema where work tables can be created.}

\item{sampleTable}{The name of the table where the sampled observation period IDs
will be stored.}

\item{sampleSize}{The number of observation periods to be included in the sample.}

\item{chunkSize}{The number of observation periods in a chunk. Larger chunk sizes
will be faster, but may lead to memory issues on the server.}
}
\description{
Extract data from the server for a random sample of observation periods, and stores them
in the local file system.
}
