% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/structureFuncs.R
\name{compare_cons_metrics}
\alias{compare_cons_metrics}
\title{Compare conservation metrics}
\usage{
compare_cons_metrics(protein_entropy, structure_profile, pdb_name)
}
\arguments{
\item{protein_entropy}{List of entropy scores values for a whole protein (output of \code{\link{get_prot_entropy}})}

\item{structure_profile}{Each element is a list of entropy values (matrix of entropy scores) and indices of residues building structure in protein of interest  (output of \code{\link{prepare_structure_profile}})}

\item{pdb_name}{The name of the analyzed protein}
}
\value{
This function produces a set of scatter plots facilitating the visual inspection of entropy metrics dependancies
}
\description{
This function is designed to compare the conservation metrics used in the analysis. This way the user can notice the significant correlation or differences between these to evaluate their performance in a specific case.
}
\details{
This function allows to show the scatterplots of an entropy scores. The protein is marked as gray points, the structures are marked with symbols. It is useful to visualise differences between entropy scores, and choose the best one for further analysis.
}
\examples{
data("alignment")
alignment = delete_isoforms(alignment)
data("structure")
uniprot="P34913"
indices=get_structures_idx(structure)
protein_index = indices$proteinIndices
structure_index = indices$structureIndices
\donttest{entropy_scores_list=list(
  Schneider_entropy = schneider_conservativity(alignment),
  Escore_entropy = Escore_conservativity(alignment)
)
structure_entropy=get_structures_entropy(structure_index, entropy_scores_list)

structure_profile = prepare_structure_profile(structure, structure_entropy)
protein_entropy=get_prot_entropy(protein_index, entropy_scores_list)
compare_cons_metrics(protein_entropy, structure_profile, "1CQZ")
}
}
\keyword{conservativity_metrics}
