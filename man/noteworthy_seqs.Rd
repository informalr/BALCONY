% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/conservationFuncs.R
\name{noteworthy_seqs}
\alias{noteworthy_seqs}
\title{Find noteworthy sequences in the dataset (aligned sequences)}
\usage{
noteworthy_seqs(percentage, alignment)
}
\arguments{
\item{percentage}{The identity of each sequence in the alignment to the consensus sequence. Output of the \code{\link{cons2seqs_ident}} function}

\item{alignment}{Alignment loaded with \code{\link[seqinr]{read.alignment}} function}
}
\value{
\item{best_consensus}{Sequence closest to the consensus}
\item{worst_consensus}{Sequence most different to the consensus}
\item{most_common}{Most common sequence in the alignment}
}
\description{
This function detects noteworthy sequences (most common, closest to the consensus and most different from the consesus) to facilitate convenient detection of outlying sequences that might be excluded from the further analysis.
}
\examples{
data("alignment")
consensus_seq = consensus(alignment, 30)
consensus_to_sequences_identity=cons2seqs_ident(alignment,consensus_seq)
noteworthy_seqs(consensus_to_sequences_identity, alignment)
}
