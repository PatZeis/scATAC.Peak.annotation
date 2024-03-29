% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scATAC.Peak.annotation.R
\name{peak_overlap}
\alias{peak_overlap}
\title{Annotate peaks to overlapping peaks}
\usage{
peak_overlap(
  peak_features = NULL,
  combined.peaks = NULL,
  do.aggregate = F,
  peak_matrix = NULL,
  insert_run1 = NULL
)
}
\arguments{
\item{peak_features}{character vector, e.g. rownames of peak-cell matrix, with chromosome information as well as start and end position separated by e.g. by "-" and ":".}

\item{combined.peaks}{GenomicRanges object of combined peaks. Output of \code{give_combined_peaks} function.}

\item{do.aggregate}{logical. If \code{T}, aggregate provided peak-cell count matrix across the common overlapping peak set.}

\item{peak_matrix}{Peak-cell count matrix. With rows representing peaks and columns representing cells.}

\item{insert_run1}{output of function with do.aggregate = \code{F}, i.e. matrix with a row for each peak, containing chromosome information, start- and end position and annotated peak with combined peak set}
}
\value{
If \code{do.aggregate} = \code{F}: matrix with a row for each peak, containing chromosome information, start- and end position and annotated peak with combined peak set. If \code{do.aggregate} = \code{T} and \code{peak_matrix} provided:
\item{agg.comb.peaks}{aggregated peak-cell count matrix across the common overlapping peak set.}
\item{peaks.combined}{data.frame with a row for each peak, containing chromosome information, start- and end position and annotated peak with combined peak set.}
}
\description{
This function annotates peaks which have been called on different samples, and thus could represent overlapping peaks with different start and or end positions to provided overlapping peaks. In addition a provided peak-cell count matrix can be aggregated across the common overlapping peak set.
}
\examples{
overlapped_peaks <- peak_overlap(peak_features=rownames(merged_atac_filt), combined.peaks=combined.peaks)
overlapped_peaks <- peak_overlap(do.aggregate=T, peak_matrix=merged_atac_filt,insert_run1 = overlapped_peaks)
}
